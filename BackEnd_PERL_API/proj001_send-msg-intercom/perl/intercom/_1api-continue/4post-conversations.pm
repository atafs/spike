package MF::IntercomDAO;

use warnings;
use strict;

#IMPORTS
use LWP::Simple;
use LWP::UserAgent;

#VARIABLES
my $ua = LWP::UserAgent->new;
$ua->agent("$0/0.1 " . $ua->agent);

my $req = HTTP::Request->new(GET => 'https://api.intercom.io/messages/');
$req->header('Accept' => 'application/json');
$req->header('Content-Type' => 'application/json');
$req->authorization_basic('i4eeesp5', '31fa73bceea742dd631d69d46ddf9352e8ec2105');


# send request
my $res = $ua->request($req);

# check the outcome
if ($res->is_success) {
   print $res->decoded_content;
}
else {
   print "Error: " . $res->status_line . "\n";
}


#PRINTS
#getprint "http://search.cpan.org/dist/libwww-perl/";
print "\n\n", 'Ended with SUCCESS!!', "\n";
