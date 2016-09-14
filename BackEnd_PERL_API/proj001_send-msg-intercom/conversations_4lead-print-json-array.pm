package MF::IntercomDAO;

use warnings;
use strict;

#IMPORTS
use LWP::UserAgent;
use JSON qw( decode_json );

#VARIABLES
#AVOID: 500 Can't verify SSL peers without knowing which Certificate Authorities to trust
$ENV{'PERL_LWP_SSL_VERIFY_HOSTNAME'} = 0;

my $user = "i4eeesp5";
my $pass = "31fa73bceea742dd631d69d46ddf9352e8ec2105";

#get lead id ***************************************
print "\n", '# get leads ***************************************', "\n";

my $url = "https://api.intercom.io/contacts/";

my $req = HTTP::Request->new(GET => $url);
$req->authorization_basic($user, $pass);
$req->header('accept' => 'application/json');
$req->header('content-type' => 'application/json');

my $ua = LWP::UserAgent->new;
$ua->protocols_allowed( [ 'https'] );

my $resp = $ua->request($req);

if ($resp->is_success) {
    my $message = $resp->decoded_content;
    print "Received reply: $message\n";
}
else {
    print "HTTP GET error code: ", $resp->code, "\n";
    print "HTTP GET error message: ", $resp->message, "\n";
}

#parse json
my $decoded = decode_json($resp->decoded_content );
my @contacts = @{ $decoded->{'contacts'} };

print "\n", '# email # user_id # id **************************', "\n";
# This is a Perl example of parsing a JSON array.
foreach my $f ( @contacts ) {
  if($f->{"email"} eq "hugo-tomas4\@moonfruit.com") {
    my $id = $f->{"id"};
    print "\n" . $f->{"email"} . " id is " . $id . "\n\n";
  }
  print $f->{"email"} . "\t" . $f->{"user_id"} . "\t" . $f->{"id"} . "\n";
}

#END ********************************************
print "\n", 'Ended with SCRIPT!!', "\n";
