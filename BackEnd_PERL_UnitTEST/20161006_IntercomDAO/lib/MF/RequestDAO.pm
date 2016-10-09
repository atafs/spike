package MF::RequestDAO;

use strict;
use warnings;

use Carp qw( confess );
use Dancer ':syntax';

=head1 NAME

MF::RequestDAO - Data access object for accessing request information

=head1 SYNOPSIS

 my $mf_request_dao = MF::RequestDAO->new;

=head1 DESCRIPTION

This package provides method for accessing data on a Dancer request.

=head1 CONSTRUCTORS

=head1 new

 my $mf_request_dao = MF::RequestDAO->new();

=cut

=head1 METHODS

=head2 remote_address

Reads the remote address of the request.

 my $remote_address = $mf_request_dao->remote_address;

=cut

sub remote_address {
    my ($self) = @_;

    return request->remote_address;
}

=head2 get_header

Returns the specified header from the request.

 my $header_name = 'Cache-Control';
 my $value = $mf_request_dao->get_header($header_name);

n.b. Can't call this method 'header' due to sub redefined error.

=cut

sub get_header {
    my ( $self, $header_name ) = @_;
    confess('no header') unless $header_name;

    return request->header($header_name) || '';
}

=head2 no_cache

Returns true if the Cache-Control header contains 'no-cache', else false.

 if ( $mf_request_dao->no_cache ) { print "Do not cache"; }

=cut

sub no_cache {
    my ($self) = @_;

    my $cache_control = $self->get_header('Cache-Control');

    return ( $cache_control =~ m/no-cache/ );
}

1;

__END__

=head1 SEE ALSO

=head1 AUTHOR(S)

Edward Hayes-Holgate

=head1 COPYRIGHT

Copyright (c) 2014, Sitemaker Software Ltd - All Rights Reserved.

=cut
