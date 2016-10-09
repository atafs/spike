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

# use MF::RequestDAO;

# use Sitemaker::Logger qw(debug warning error);

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

# has 'request_dao' => (
#     is      => 'ro',
#     isa     => 'MF::RequestDAO',
#     lazy    => 1,
#     builder => '_build_request',
# );

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
    return JSON::XS->new->canonical->allow_blessed->convert_blessed;
}

sub _build_request {
    return MF::RequestDAO->new();
}

# Validate method type
sub _validate_method {
    my ($method) = @_;
    if ( $method !~ /^(GET|PUT|POST|DELETE|HEAD)$/ ) {
        confess('request method must be GET, PUT, POST, DELETE, HEAD');
    }
    return $method;
}

sub _validate_path {
    my ( $path, $method ) = @_;
    if ( !$method ) {
        confess "url is mandatory for $method" unless $path;
    }
    return $path;
}

# Validate headers/params
sub _validate_headers {
    my ( $headers, $params ) = @_;

    if ( $headers && ref $headers ne 'HASH' ) {
        confess('headers must be presented as a hashref');
    }
    if ( $params && ref $params ne 'HASH' ) {
        confess('params must be presented as a hashref');
    }
    return $headers;
}

sub _validate_errors {
    my ( $res, $code ) = @_;

    if ( $res->is_error ) {
        return ( undef, $res->message . "($code)" );
    }
    return $res;
}

# Set content
sub _set_request_with_custom_content {
    my ( $self, $content, $req ) = @_;

    # my $remote_addr = $self->request_dao->remote_address;

    if ($content) {
        my $json = $self->encoder->encode($content);
        $req->content($json);
        $req->header( 'Accept'       => 'application/json' );
        $req->header( 'Content-type' => 'application/json' );
        # $req->header( 'X-Forwarded-For' => '$remote_addr' );

    }
    else {
        $req->header( 'Content-Length', 0 );
    }
    return $req;
}

# Set headers
sub _set_request_with_custom_headers {
    my ( $self, $req, $headers ) = @_;

    my $custom_headers = $self->{'_headers'} || {};
    for my $header ( keys %$custom_headers ) {
        $req->header( $header, $custom_headers->{$header} );
    }

    for my $header_key ( keys %$headers ) {
        $req->header( $header_key, $headers->{$header_key} );
    }
    return $req;
}

=head2 Request Methods

=head3 json_request

Performs an HTTP request and returns a tuple with a struct of the JSON response body and any error message.

Takes an optional body content, hashref of custom request headers and/or hashref of query params

 my ( $reponse_struct, $err )
    = $common->json_request( $method, $path, $content, \%headers, \%params );

=cut

sub json_request {
    my ( $self, $method, $path, $content, $headers, $params ) = @_;

    my ( $response_body, $err ) = $self->request( $method, $path, $content, $headers, $params );
    return ( undef, $err ) if $err;

    my $response_struct;
    eval { $response_struct = $self->encoder->decode($response_body); };
    if ($@) {

        # error("JSON decode failed [$method $path]");
        return ( undef, "Unable to decode JSON in response body" );
    }

    return ( $response_struct, undef );

}

=head3 request

Performs an HTTP request and returns a tuple with the content of the response body and any error message.

Takes an optional body content, hashref of custom request headers and/or hashref of query params

 my ( $content, $err )
    = $common->request( $method, $path, $content, \%headers, \%params );

=cut

sub request {
    my ( $self, $method, $path, $content, $headers, $params ) = @_;
    my $start_t = [gettimeofday];

    my $validate_method  = _validate_method($method);
    my $validate_path    = _validate_path( $path, $method );
    my $validate_headers = _validate_headers( $headers, $params );

    my $uri = URI->new( $self->base_url );
    $uri->path($path);
    if ($params) {
        $uri->query_form( $params, ';' );
    }
    my $req = HTTP::Request->new( $method => $uri->canonical->as_string() );
    $req->authorization_basic( $self->username, $self->password );

    # Builds
    $req = _set_request_with_custom_content( $self, $content, $req );
    $req = _set_request_with_custom_headers( $self, $req );

    my $res  = $self->ua->request($req);
    my $code = $res->code;

    my $duration = tv_interval($start_t);
    my $validate_errors = _validate_errors( $res, $code );

    my $decoded_content = $res->decoded_content;
    if ( !$decoded_content ) {

        my $decode_error = { is_bad_gateway => 1, valid => 0, };
        return ( undef, $decode_error );
    }

    if ( !$validate_errors ) {
        my $api_error = { is_bad_gateway => 1, valid => 0, };
        return ( undef, $api_error );
    }

    return ( $decoded_content, undef );
}

=head2 create_message

Creates an intercom user initiated message

=cut

sub create_contact {
    my ( $self, $path, $name, $email ) = @_;

    my $content = {
        name  => $name,
        email => $email,
    };

    my ( $contact, $err ) = $self->json_request( 'POST', $path, $content );

    if ($err) {
      my $error_message = ref $contact eq 'HASH' ? $contact->{message} : $contact;
      return( undef, $error_message );
    }
    return ( $contact, undef );
}

sub create_message {
    my ( $self, $user_id, $id, $body ) = @_;

    my $content;
    if ($user_id) {
        $content = _set_content_for_user_id( $id, $body );
    }
    else {
        $content = _set_content_for_id( $id, $body );
    }

    my ( $message, $err ) = $self->json_request( 'POST', '/messages/', $content );

    if ($err) {
        my $error_message = ref $message eq 'HASH' ? $message->{message} : $message;
        return( undef, $error_message );
    }

    return ( $message, undef );
}

# Helper functions
sub _set_content_for_user_id {
    my ( $id, $body ) = @_;
    my $content = {
        from => {
            type    => 'user',
            user_id => $id,
        },
        body => $body,
    };
    return $content;
}

sub _set_content_for_id {
    my ( $id, $body ) = @_;
    my $content = {
        from => {
            type => 'user',
            id   => $id,
        },
        body => $body,
    };
    return $content;
}

__PACKAGE__->meta->make_immutable;

1;

__END__

=head1 SEE ALSO

L<LWP::UserAgent> delegate user agent used to chat with IntercomDAO.

L<MF::IntercomDAO::Catalog> concrete DAO that will use this
class to store/fetch of objects via Sitemaker IntercomDAO service.

=head1 AUTHOR(S)


=head1 COPYRIGHT

Copyright (c) 2015, Sitemaker Software Ltd - All Rights Reserved.

=cut

# vim: set ts=4 sw=4 et shiftround syntax=perl :
