package MF::IntercomDAO;

use warnings;
use strict;

#IMPORTS
use LWP::Simple;

#VARIABLES
$ENV{'PERL_LWP_SSL_VERIFY_HOSTNAME'} = 0;

my $url = 'https://www.intercom.io/';
my $response = get $url;
#die 'Error getting $url' unless defined $response;

#PRINTS
print 'url: ', $url, "\n";
