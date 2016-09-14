#package MF::SitemakerDAO::Common;

use strict;
use warnings;

use Moose;
use namespace::autoclean;

use Carp qw( confess );
use HTTP::Status qw(:constants);
use JSON::RPC::Legacy::Client;
use MIME::Base64;

use MF::ErrorFactory;
use MF::RequestDAO;

use constant TRACE => 0;

#Check
has 'host' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

has 'rpc_client' => (
    is       => 'ro',
    isa      => 'JSON::RPC::Legacy::Client',
    required => 1,
);

has 'errfac' => (
    is      => 'ro',
    isa     => 'MF::ErrorFactory',
    lazy    => 1,
    builder => '_build_errfac',
);

has 'logger' => (
    is       => 'ro',
    isa      => 'MF::Logger',
    required => 1,
);

has 'request_dao' => (
    is      => 'ro',
    isa     => 'MF::RequestDAO',
    lazy    => 1,
    builder => '_build_request',
);

# If the error factory is not passed into the constructor, then
# the first time the error factory getter is called this
# subroutine will instantiate an error factory to use and for
# every subsequent getter call.
sub _build_errfac {
    return MF::ErrorFactory->new();
}

sub _build_request {
    return MF::RequestDAO->new();
}


sub from_config {
    my ( $class, $config, $logger ) = @_;

    my $user    = $config->{'api_client'}->{'username'};
    my $pass    = $config->{'api_client'}->{'password'};
    my $host    = $config->{'api_client'}->{'host'};
    my $timeout = $config->{'api_client'}->{'timeout'};

    if ( !( $user && $pass && $host && $timeout ) ) {
        $logger->error('Missing SM RPC settings from config');
        return;
    }
    my $rpc_client = JSON::RPC::Legacy::Client->new();

    my $auth = encode_base64("$user:$pass");
    my $ua   = $rpc_client->ua;

    $ua->default_header( 'Authorization', "Basic $auth" );
    $ua->timeout($timeout);

    $rpc_client->version('1.0');

    return $class->new(
        rpc_client => $rpc_client,
        host       => $host,
        logger     => $logger,
    );

}

sub api_call {
    my ( $self, %args ) = @_;
    my $url    = $args{url}    or confess('no url');
    my $method = $args{method} or confess('no method');
    my $params = $args{params} or confess('no params');

    my $rpc_client  = $self->rpc_client;
    my $log         = $self->logger;
    my $remote_addr = $self->request_dao->remote_address;

    $rpc_client->ua->default_header( 'X-Forwarded-For', $remote_addr );

    # Make RPC call to Sitemaker API
    my $uri   = "http://" . $self->host . "/$url";
    my $debug = "[$uri $method $remote_addr]";
    my $obj   = { method => $method, params => $params };

    # rpc call returns a JSON::RPC::ServiceObject if $obj->method
    # starts with 'system.'
    # else returns a JSON::RPC::ReturnObject
    my $res = $rpc_client->call( $uri, $obj );
    my $mf_error;

    if ( !$res ) {
        $mf_error = $self->errfac->error(
            {   code => HTTP_BAD_GATEWAY,
                msg  => $rpc_client->status_line,
            }
        );
        $log->debug( "SM RPC: no return obj [" . $mf_error . "] $debug" );
        TRACE && $log->debug_dumper($params);
        return ( undef, $mf_error );
    }

    if ( $res->is_error ) {
        my $error = $res->error_message;
        $mf_error = $self->errfac->error(
            {   code => $error->{code}    || HTTP_INTERNAL_SERVER_ERROR,
                msg  => $error->{message} || 'none',
            }
        );
        $log->debug( "SM RPC: cmd error [" . $mf_error . "] $debug" );
        TRACE && $log->debug_dumper($params);
        return ( undef, $mf_error );
    }

    $log->info("SM RPC: ok $debug");
    TRACE && $log->debug_dumper($params);
    return ( $res->content->{result}, undef );
}

__PACKAGE__->meta->make_immutable;

1;

__END__

=head1 SEE ALSO

L<MF::ConfigStore> Holds configuration parameters ( read-only )

L<MF::Error> Error object

L<MF::ErrorFactory> Error object factory

L<MF::Logger> Moonfruit's logging object.

=head1 AUTHOR(S)

Edward Hayes-Holgate

=head1 COPYRIGHT

Copyright (c) 2014, Sitemaker Software Ltd - All Rights Reserved.

=cut
