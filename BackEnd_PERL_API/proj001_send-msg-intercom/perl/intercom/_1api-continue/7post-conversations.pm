package MF::IntercomDAO;

use warnings;
use strict;

#IMPORTS
use LWP::UserAgent;

#VARIABLES
my $auth = "i4eeesp5:31fa73bceea742dd631d69d46ddf9352e8ec2105";

my $url = "https://api.intercom.io/users/";
my $json = '{ "message_type": "email", "subject": "Hey", "body": "Ponies, cute small horses or something more sinister? 5555555555", "template": "plain", "from": { "type": "user", "email": "hugo@moonfruit.com"} }';

my $req = HTTP::Request->new(GET => $url);

$req->header('accept' => 'application/json');
$req->header('content-type' => 'application/json');
$req->content($json);

my $ua = LWP::UserAgent->new;
$ua->default_header( 'Authorization', "Basic $auth" );

my $resp = $ua->request($req);

if ($resp->is_success) {
    my $message = $resp->decoded_content;
    print "Received reply: $message\n";
}
else {
    print "HTTP GET error code: ", $resp->code, "\n";
    print "HTTP GET error message: ", $resp->message, "\n";
}

#PRINT
print '$realm = ', $auth, "\n";
print '$url = ', $url, "\n";
print '$json = ', $json, "\n";
print '$resp = ', $resp, "\n";


print "\n", 'Ended with SUCCESS!!', "\n";
