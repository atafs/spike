package Conversations_3lead;

use warnings;
use strict;

#IMPORTS
use LWP::UserAgent;
use JSON;
use JSON qw( decode_json );
use Data::Dumper;

sub intercom_new_lead() {
  #VARIABLES
  #AVOID: 500 Can't verify SSL peers without knowing which Certificate Authorities to trust
  $ENV{'PERL_LWP_SSL_VERIFY_HOSTNAME'} = 0;

  my $user = "i4eeesp5";
  my $pass = "31fa73bceea742dd631d69d46ddf9352e8ec2105";

  #1 create lead ***************************************
  my $url = "https://api.intercom.io/contacts/";
  my $json = '{
    "email": "hugo-tomas8@moonfruit.com",
    "name": "hugo-tomas8",

    "message_type": "email",
    "subject": "Hey",

    "last_seen_ip" : "1.2.3.4",
    "last_seen_user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9",
    "custom_attributes": {
      "paid_subscriber" : false,
      "monthly_spend": 300.5,
      "team_mates": 25
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

  print "Creating the lead... please wait 30s!!:\n";
  sleep(30);

  #2 get lead id ***************************************
  print "\n", '#2 get lead id ***************************************', "\n";

  $url = "https://api.intercom.io/contacts/";

  $req = HTTP::Request->new(GET => $url);
  $req->authorization_basic($user, $pass);
  $req->header('accept' => 'application/json');
  $req->header('content-type' => 'application/json');

  $ua = LWP::UserAgent->new;
  $ua->protocols_allowed( [ 'https'] );

  $resp = $ua->request($req);

  if ($resp->is_success) {
      my $message = $resp->decoded_content;
      print "Received reply: $message\n";
  }
  else {
      print "HTTP GET error code: ", $resp->code, "\n";
      print "HTTP GET error message: ", $resp->message, "\n";
  }

  #2.1 parse json
  my $decoded = decode_json($resp->decoded_content );
  my @contacts = @{ $decoded->{'contacts'} };

  print "\n", '#2.1 parse from json **************************', "\n";
  print "decoded->{pages}->{type} = " . $decoded->{pages}->{type} . "\n";
  # This is a Perl example of parsing a JSON array.
  my $id;
  foreach my $f ( @contacts ) {
    if($f->{"email"} eq "hugo-tomas8\@moonfruit.com") {
      $id = $f->{"id"};
      print "\n" . $f->{"email"} . " id is " . $id . "\n";
    }
    print $f->{"email"} . "\t" . $f->{"user_id"} . "\t" . $f->{"id"} . "\n";
  }

  #3 post the message in lead **************************
  print "\n", '#3 post the message in lead **************************', "\n";

  $url = "https://api.intercom.io/messages/";
  my $data = {
          template => 'plain',
          subject  => 'americotests',
          body  => 'PERL POST as a LEAD (contact)? 1234',
          message_type  => 'email',
          from  => {
            type  => 'user',
            id  => $id
          },
          to  => {
            type  => 'admin',
            id  => 'i4eeesp5'
          },
      };
  print "\n", '#3.1 dumper for json **************************', "\n";
  print Dumper($data);

  my $json_post = to_json $data;


  $req = HTTP::Request->new(POST => $url);
  $req->authorization_basic($user, $pass);
  $req->header('accept' => 'application/json');
  $req->header('content-type' => 'application/json');
  $req->content($json_post);

  $ua = LWP::UserAgent->new;
  $ua->protocols_allowed( [ 'https'] );

  $resp = $ua->request($req);

  if ($resp->is_success) {
      my $message = $resp->decoded_content;
      print "Received reply: $message\n";
  }
  else {
      print "HTTP GET error code: ", $resp->code, "\n";
      print "HTTP GET error message: ", $resp->message, "\n";
  }

  #END ********************************************
  print "\n", 'Ended with SCRIPT!!', "\n";

}

1
