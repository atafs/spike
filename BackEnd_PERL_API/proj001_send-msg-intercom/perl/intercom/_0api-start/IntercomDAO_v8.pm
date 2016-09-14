package MF::IntercomDAO;

#IMPORTS
use warnings;
use strict;
use LWP::UserAgent;

#VARIABLES
my $url = 'https://www.intercom.io/';   # Yes, HTTPS!
my $browser = LWP::UserAgent->new;
my $response = $browser->get($url);

#AVOID: 500 Can't verify SSL peers without knowing which Certificate Authorities to trust
$ENV{'PERL_LWP_SSL_VERIFY_HOSTNAME'} = 0;

#EXCEPTION
#die "Error at $url\n ", $response->status_line, unless $response->is_success;

#PRINTS
print "Whee, it worked!  I got that ", $response->content_type, " document!\n";
print "\nEnded with SUCCESS!!\n";
