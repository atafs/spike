use warnings;
use strict;

#IMPORTS
use LWP::UserAgent;
use JSON qw( decode_json );

use Data::Dumper;

#VARIABLES
#AVOID: 500 Can't verify SSL peers without knowing which Certificate Authorities to trust
$ENV{'PERL_LWP_SSL_VERIFY_HOSTNAME'} = 0;
$Data::Dumper::Maxdepth = 3;       # no deeper than xxx refs down

my $user = "otis";
my $pass = "P4ssw0rd";

#1 post ***************************************
print "\n", '#1 post ***************************************', "\n";

my $url = "http://localhost:8080/email/sendtemplate/";
my $json = '{
  TemplateName  : "test-template",
  Subject       : "Test Mail",
  FromEmail     : "test@moonfruit.com",
  FromName      : "Test Owner",
  ToEmail       : "test@customer.com",
  ToName        : "Test Customer"
}';

my $req = HTTP::Request->new(POST => $url);
$req->authorization_basic($user, $pass);
$req->header('accept' => 'application/json');
$req->header('content-type' => 'application/json');
$req->content($json);

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
