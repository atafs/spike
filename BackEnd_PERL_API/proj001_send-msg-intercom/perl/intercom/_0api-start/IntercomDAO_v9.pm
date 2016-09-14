package MF::IntercomDAO;

#IMPORTS
use warnings;
use strict;

require LWP::UserAgent;

 my $ua = LWP::UserAgent->new;
 $ua->timeout(10);
 $ua->env_proxy;

 my $response = $ua->get('http://search.cpan.org/');

 if ($response->is_success) {
     print $response->decoded_content;  # or whatever
 }
 else {
     die $response->status_line;
 }
print "\nEnded with SUCCESS!!\n";
