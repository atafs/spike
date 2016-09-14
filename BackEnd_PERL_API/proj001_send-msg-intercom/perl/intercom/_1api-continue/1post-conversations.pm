package MF::IntercomDAO;

use warnings;
use strict;

#IMPORTS
use LWP::Simple;
use LWP::UserAgent;

#VARIABLES
$ENV{'PERL_LWP_SSL_VERIFY_HOSTNAME'} = 0;

my $client = LWP::UserAgent->new;
my $url = 'https://api.intercom.io/messages/';

#add params to -H header
my @headers = (
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
   #'User-Agent' => 'Mozilla/4.76 [en] (Win98; U)',
   #'Accept-Charset' => 'iso-8859-1,*,utf-8',
   #'Accept-Language' => 'en-US',
);

# Issue request, with an HTTP header
my $response = $client->get($url, @headers);
#die 'Error getting $url' unless $response->is_success;

#PRINTS
print 'url: ', $url, "\n";
print 'response: ', $response, "\n";
print 'headers: ', "\n";
foreach my $n (@headers) {
  print qq^\t$n ^;
}
print "\n\n", 'Ended with SUCCESS!!', "\n";
