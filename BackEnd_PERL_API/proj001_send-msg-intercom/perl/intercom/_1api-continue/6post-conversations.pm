package MF::IntercomDAO;

use warnings;
use strict;

#IMPORTS
use LWP::UserAgent;

my $auth = "i4eeesp5:31fa73bceea742dd631d69d46ddf9352e8ec2105";

my $ua = LWP::UserAgent->new;
$ua->default_header( 'Authorization', "Basic $auth" );

my $endpoint = "https://api.intercom.io/users/";
my $json = '{"message_type": "email", "subject": "Hey", "body": "Ponies, cute small horses or something more sinister? 5555555555", "template": "plain", "from": { "type": "user", "email": "hugo@moonfruit.com"} }';

# set custom HTTP request header fields
my $req = HTTP::Request->new(GET => $endpoint);
$req->header('accept' => 'application/json');
$req->header('content-type' => 'application/json');
$req->content($json);

my $resp = $ua->request($req);
if ($resp->is_success) {
    my $message = $resp->decoded_content;
    print "Received reply: $message\n";
}
else {
    print "HTTP GET error code: ", $resp->code, "\n";
    print "HTTP GET error message: ", $resp->message, "\n";
}

#PRINTS
#getprint "http://search.cpan.org/dist/libwww-perl/";
print "\n\n", 'Ended with SUCCESS!!', "\n";
