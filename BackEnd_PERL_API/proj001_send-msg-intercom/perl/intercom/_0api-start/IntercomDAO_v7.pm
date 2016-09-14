package MF::IntercomDAO;

#SEARCH
#http://us.imdb.com/Tsearch?title=Blade%20Runner&restrict=Movies+and+TV

use warnings;
use strict;
use LWP 5.64;
my $browser = LWP::UserAgent->new;

#IMPORTS
use URI;
my $url = URI->new( 'https://torrentz.eu/' );
 # makes an object representing the URL

$url->query_form(  # And here the form data pairs:
 'thesearchbox'    => 'Blade Runner',
 #'restrict' => 'Movies and TV',
);
my $response = $browser->get($url);
print "\nEnded with SUCCESS!!\n";
