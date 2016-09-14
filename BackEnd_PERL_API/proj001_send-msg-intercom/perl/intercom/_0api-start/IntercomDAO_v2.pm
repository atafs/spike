package MF::IntercomDAO;

use warnings;
use strict;

#IMPORTS
use LWP::Simple;
use LWP::UserAgent;

#VARIABLES
$ENV{'PERL_LWP_SSL_VERIFY_HOSTNAME'} = 0;

my $browser = LWP::UserAgent->new;
my $url = 'https://www.intercom.io/';

# Issue request, with an HTTP header
my $response = $browser->get($url,
  'User-Agent' => 'Chrome/33.0.1750.117 Safari/537.36',
);
#die 'Error getting $url' unless $response->is_success;

#POST
$response = $browser->post($url,
  [
   'firstName' => 'Americo',
   'lastName' => 'Tomas'
  ],
);
#die 'Error getting $url' unless $response->is_success;

#PRINTS
print "This is libwww-perl-$LWP::VERSION\n";
print 'content_type: ', $response->content_type, "\n";
print 'status_line: ', $response->status_line, "\n";


#print 'Content type is ', $response->decoded_content;
#print 'Content is:';
#print $response->content;
