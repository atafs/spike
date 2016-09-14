package MF::IntercomDAO;

use warnings;
use strict;

#IMPORTS
use LWP::UserAgent;

#VARIABLES
#AVOID: 500 Can't verify SSL peers without knowing which Certificate Authorities to trust
$ENV{'PERL_LWP_SSL_VERIFY_HOSTNAME'} = 0;

my $user = "i4eeesp5";
my $pass = "31fa73bceea742dd631d69d46ddf9352e8ec2105";

my $url = "https://api.intercom.io/messages/";
my $json = '{
  "message_type": "email",
  "subject": "Hey",
  "body": "Ponies, cute small horses or something more sinister? perl qqqqqqqqqqqqq",
  "template": "plain",
  "from": {
      "type": "user",
      "email": "hugo@moonfruit.com"
  },
  "to": {
      "type": "admin",
      "id": "i4eeesp5"
  }
}';

my $req = HTTP::Request->new(POST => $url);
$req->authorization_basic($user, $pass);
$req->header('accept' => 'application/json');
$req->header('content-type' => 'application/json');
$req->content($json);

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

#END
print "\n", 'Ended the SCRIPT!!', "\n";
