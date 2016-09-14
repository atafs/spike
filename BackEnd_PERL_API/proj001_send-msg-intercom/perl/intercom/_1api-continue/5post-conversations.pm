package MF::IntercomDAO;

use warnings;
use strict;

#IMPORTS
use HTTP::Request::Common qw(POST);
use LWP::UserAgent;

my $ua = LWP::UserAgent->new;

my $req = POST 'https://api.intercom.io/messages/',
    [   message_type => 'email',
        subject => 'Hey-perl',
        body => 'Ponies, cute small horses or something more sinister? 5555555555'
    ];
$req->header('Accept' => 'application/json');
$req->header('Content-Type' => 'application/json');
$req->header('x-auth-token' => 'i4eeesp5:31fa73bceea742dd631d69d46ddf9352e8ec2105');

print $ua->request($req)->as_string;


#PRINTS
#getprint "http://search.cpan.org/dist/libwww-perl/";
print "\n\n", 'Ended with SUCCESS!!', "\n";
