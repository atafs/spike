package MF::IntercomDAO;

use warnings;
use strict;

#IMPORTS
use LWP::Simple;
use LWP::UserAgent;

$ENV{'PERL_LWP_SSL_VERIFY_HOSTNAME'} = 0;

# Create a user agent object
my $ua = LWP::UserAgent->new;
$ua->agent("MyApp/0.1 ");

# Create a request
my $req = HTTP::Request->new(GET => 'https://www.intercom.io/');
$req->content_type('application/x-www-form-urlencoded');
$req->content('query=libwww-perl&mode=dist');

# Pass request to the user agent and get a response back
my $res = $ua->request($req);

# Check the outcome of the response
if ($res->is_success) {
  #getprint('http://www.perlmeme.org') or die 'Unable to get page';
  print $res->content;
  print "\n\n", $res->status_line, "\n";
}
else {
   print "\n\n", $res->status_line, "\n";
}
