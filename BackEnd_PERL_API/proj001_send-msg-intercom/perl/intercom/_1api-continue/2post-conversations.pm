package MF::IntercomDAO;

use warnings;
use strict;

#IMPORTS
use LWP::Simple;
use LWP::UserAgent;

#VARIABLES
$ENV{'PERL_LWP_SSL_VERIFY_HOSTNAME'} = 0;

my $client = LWP::UserAgent->new;
$client->agent("MyApp/0.1 ");

my $req = HTTP::Request->new(POST => 'https://api.intercom.io/messages/');
$req->content_type('application/json');
#$req->accept('application/json');

# Pass request to the user agent and get a response back
my $res = $client->request($req);

# Check the outcome of the response
if ($res->is_success) {
  print $res->content;
  print "\n\n", $res->status_line, "\n";
}
else {
   print "\n\n", $res->status_line, "\n";
}

#PRINTS
print 'response: ', $res, "\n";
print 'headers: ', "\n";
print "\n\n", 'Ended with SUCCESS!!', "\n";
