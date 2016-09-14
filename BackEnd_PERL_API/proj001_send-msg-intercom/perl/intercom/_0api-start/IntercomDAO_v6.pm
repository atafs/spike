package MF::IntercomDAO;

use warnings;
use strict;

#IMPORTS
use LWP 5.64;
my $browser = LWP::UserAgent->new;

my $url = 'http://www.cpan.org/RECENT.html';
my $response = $browser->get($url);
die "Can't get $url -- ", $response->status_line unless $response->is_success;

my $html = $response->content;

#while( $html =~ m/<A HREF=\"(.*?)\"/g ) {
#    print "$1\n";
#}

#absolute URLs
while( $html =~ m/<A HREF=\"(.*?)\"/g ) {
    print URI->new_abs( $1, $response->base ) ,"\n";
}

print "\nEnded with SUCCESS!!\n";
