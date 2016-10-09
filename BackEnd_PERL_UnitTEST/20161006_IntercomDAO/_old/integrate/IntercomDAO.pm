package MF::IntercomDAO;

use warnings;
use strict;

use Moose;
use namespace::autoclean;

use Carp qw( confess );
use HTTP::Request;
use LWP::UserAgent;
use Time::HiRes qw( gettimeofday tv_interval);
use JSON::XS;

# use Sitemaker::Logger qw(debug warning error);

use constant TRACE => 0;

use Readonly;

=head1 NAME

MF::IntercomDAO

=head1 SYNOPSIS

 use MF::IntercomDAO;
 my $common = MF::IntercomDAO->new( {...} );
 my ( $response_struct, $err )
    = $common->request( $method, $path, $content, \%headers, \%params );

=head1 CONSTRUCTOR

=head2 new

=cut

has 'base_url' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

has 'username' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

has 'password' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

has 'ua' => (
    is      => 'ro',
    isa     => 'LWP::UserAgent',
    lazy    => 1,
    builder => '_build_user_agent',
);

has 'encoder' => (
    is      => 'ro',
    lazy    => 1,
    builder => '_build_encoder',
);

=head1 ATTRIBUTES

=head2 base_url

e.g. https://localhost:9000

=head2 ua

Injected user agent delegate that will be used to contact IntercomDAO

=head2 encoder

JSON encoder/decoder

=head1 METHODS

=head2 from_store

Constructs and inicializes the object from a  L<Sitemaker::ConfigStore>.
Receives the ConfigStore instance as argument to get the IntercomDAO connection
information.

my $common = $class->from_store( $store );

=cut


sub _build_user_agent {
    my $self = shift;
    my $ua   = LWP::UserAgent->new(
        agent                 => "MF/IntercomDAO",
        env_proxy             => 1,                  # allow env proxy
        requests_redirectable => [],                 # do not redirect
    );
    #$ua->proxy(http => "http://10.60.34.xx:8888"); # charles for dev
    return $ua;
}

sub _build_encoder {
    return JSON::XS->new->canonical->utf8->allow_blessed->convert_blessed;
}

=head2 Request Methods

=head3 json_request

Performs an HTTP request and returns a tuple with a struct of the JSON response body and any error message.

Takes an optional body content, hashref of custom request headers and/or hashref of query params

 my ( $reponse_struct, $err )
    = $common->json_request( $method, $path, $content, \%headers, \%params );

=cut

sub json_request {
    my( $self, $method, $path, $content, $headers, $params ) = @_;

    my( $response_body, $err ) = $self->request( $method, $path, $content, $headers, $params );
    return( undef, $err ) if $err;

    my $response_struct;
    eval { $response_struct = $self->encoder->decode($response_body); };
    if($@) {
        # error("JSON decode failed [$method $path]");
        return( undef, "Unable to decode JSON in response body" );
    }

    return( $response_struct, undef );

}

=head3 request

Performs an HTTP request and returns a tuple with the content of the response body and any error message.

Takes an optional body content, hashref of custom request headers and/or hashref of query params

 my ( $content, $err )
    = $common->request( $method, $path, $content, \%headers, \%params );

=cut

sub request {
    my( $self, $method, $path, $content, $headers, $params ) = @_;
    my $start_t = [gettimeofday];

    # Validate method type
    if( $method !~ /^(GET|PUT|POST|DELETE|HEAD)$/ ) {
        confess('request method must be GET, PUT, POST, DELETE, HEAD');
    }

    confess "url is mandatory for $method" unless $path;

    # Validate headers/params
    if( $headers && ref $headers ne 'HASH' ) {
        confess('headers must be presented as a hashref');
    }
    if( $params && ref $params ne 'HASH' ) {
        confess('params must be presented as a hashref');
    }

    # debug( "IntercomDAO request: $method " . $self->base_url . "$path" );

    my $uri = URI->new( $self->base_url );
    $uri->path($path);
    if($params) {
        # add params to uri, use ; as delimiter as it's ace
        $uri->query_form( $params, ';' );
    }
    my $req = HTTP::Request->new( $method => $uri->canonical->as_string() );
    $req->authorization_basic( $self->username, $self->password );

    # Build content
    if($content) {
        my $json = $self->encoder->encode($content);
        $req->content($json);
        $req->header( 'accept'       => 'application/json' );
        $req->header( 'content-type' => 'application/json' );
    }
    else {
        $req->header( 'Content-Length', 0 );
    }

    # Build headers
    my $custom_headers = $self->{'_headers'} || {};
    for my $header ( keys %$custom_headers ) {
        $req->header( $header, $custom_headers->{$header} );
    }

    for my $header_key ( keys %$headers ) {
        $req->header( $header_key, $headers->{$header_key} );
    }

    my $res  = $self->ua->request($req);
    my $code = $res->code;

    my $duration = tv_interval($start_t);
    # debug( "$method $code: $path", $duration );

    if( $res->is_error ) {
        # error( "IntercomDAO request failed [$method " . $uri->canonical->as_string . " $code]" );
        return( undef, $res->message . "($code)" );
    }

    my $decoded_content = $res->decoded_content;
    if( !$decoded_content ) {
        # debug("No body content returned");
        return( undef, undef );
    }

    return( $decoded_content, undef );
}

=head2 create_message

Creates an intercom user initiated message

=cut

sub create_contact {
    my( $self, $name, $email ) = @_;

    my $message = {
        name  => $name,
        email => $email,
    };
    $log->debug( "create_contact [" . $message . "]" );

    my( $response, $err ) = $self->json_request( 'POST', '/contacts/', $message );
    if($err) {
        $log->debug("Failed to send intercom messages [$err]");

        return;
    }

    return $response;

}

sub create_message {
    my( $self, $id, $message_body ) = @_;

    my $message = {
        from => {
            type => 'user',
            id   => $id
        },
        body => $message_body,
    };

    my( $response, $err ) = $self->json_request( 'POST', '/messages/', $message );
    if($err) {
        $log->debug("Failed to send intercom messages [$err]");
        return;
    }

    return $response;

}

sub is_alive {
    my($self) = @_;
    TRACE && debug("checking status");

    my( $response_content, $err ) = $self->request( 'GET', '/status' );
    if($err) {
        error("Error checking message service status [$err]");
        return 0;
    }

    return 1;
}

__PACKAGE__->meta->make_immutable;

1;

__END__

=head1 SEE ALSO

L<LWP::UserAgent> delegate user agent used to chat with IntercomDAO.

L<MF::IntercomDAO::Catalog> concrete DAO that will use this
class to store/fetch of objects via Sitemaker IntercomDAO service.

=head1 AUTHOR(S)

Edward Hayes-Holgate (eholgate@moonfruit.com)

=head1 COPYRIGHT

Copyright (c) 2015, Sitemaker Software Ltd - All Rights Reserved.

=cut

# vim: set ts=4 sw=4 et shiftround syntax=perl :
