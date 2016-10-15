use warnings;
use strict;

#IMPORTS
use Data::Dumper;
use LWP::UserAgent;

#VARIABLES
$Data::Dumper::Maxdepth = 3;       # no deeper than xxx refs down
#my $auth = "i4eeesp5:31fa73bceea742dd631d69d46ddf9352e8ec2105";
my $user = "otis";
my $pass = "P4ssw0rd";
my $url = "http://localhost:8080/email/sendtemplate/";

my $req = HTTP::Request->new(POST => $url);
$req->authorization_basic($user, $pass);
# $req->header('accept' => 'application/json');
$req->header('content-type' => 'application/json');

print Data::Dumper->Dump([$req], [qw(req)]);

my $ua = LWP::UserAgent->new;
$ua->protocols_allowed( [ 'https'] );

my $resp = $ua->request($req);

print Data::Dumper->Dump([$resp], [qw(resp)]);

if ($resp->is_success) {
    my $message = $resp->decoded_content;
    print "Received reply: $message\n";
}
else {
    print "HTTP GET error code: ", $resp->code, "\n";
    print "HTTP GET error message: ", $resp->message, "\n";
}

#END
print "\n", 'Ended with SCRIPT!!', "\n";
