#!/usr/bin/perl
package MF::IntercomDAO;

use warnings;
use strict;
use HTTP::Request::Common qw(GET);
use LWP::UserAgent;

my $url ='https://api.intercom.io/users/';
my $filename = substr( $url, rindex( $url, "/" ) + 1 );
#print "$filename\n";
open( IN, ">$filename" ) or die $!;

my $user = 'zentara';
my $pass = 'foobar';

my $expected_length;
my $bytes_received = 0;

my $ua = new LWP::UserAgent;
$ua->protocols_allowed( [ 'https'] );

 #setup request
 my $req = GET($url);
 $req->authorization_basic($user, $pass);

#do it
 my $response = $ua->request($req);

 if ($response->is_error())
            {
                    printf " %s\n", $response->status_line;
                    print "https request error!\n";
            } else {
                    my $content = $response->content();
                    print IN $content;
                }

  print $response->status_line;

close IN;
exit;
