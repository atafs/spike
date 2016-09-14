#!/usr/bin/perl -w
use strict;
use warnings;
use LWP::UserAgent;

use HTTP::Request::Common qw(GET);
use HTTP::Cookies;



#VARIABLES
my $url = 'https://api.intercom.io/contacts?email=americotest9@moonfruit.com';   # Yes, HTTPS!

# Define your User Agent
my $ua = LWP::UserAgent->new;

my @headers = (
   'User-Agent' => 'Mozilla/4.76 [en] (Win98; U)',
   'Accept-Charset' => 'iso-8859-1,*,utf-8',
   'Accept' => 'application/json',
   'Accept-Language' => 'en-US',
   'Content-Type' => 'application/json',
);

my $form = {
    'template' => 'plain',
    'subject' => 'americotests',
    'body' => 'Sending a msg to intercom: americotest9',
    'message_type' => 'email',
    'from' = {
      'type' => 'user',
      'id' => '57a9fe0192078d7340000024',
    }
    'to' = {
      'type' => 'admin',
      'id' => 'i4eeesp5',
    }
};


my $response = $ua->get($url, $form, @headers);

#AVOID: 500 Can't verify SSL peers without knowing which Certificate Authorities to trust
$ENV{'PERL_LWP_SSL_VERIFY_HOSTNAME'} = 0;

#EXCEPTION
#die "Error at $url\n ", $response->status_line, unless $response->is_success;

#PRINTS
print "Whee, it worked!  I got that ", $response->content_type, " document!\n";
print "\nEnded with SUCCESS!!\n";
