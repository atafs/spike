#!/usr/bin/perl -w
use strict;
use warnings;
use LWP::UserAgent;

use HTTP::Request::Common qw(GET);
use HTTP::Cookies;

# Define your User Agent
my $ua = LWP::UserAgent->new;

# Define user agent type
$ua->agent('Mozilla/8.0');

# Cookies
$ua->cookie_jar(
    HTTP::Cookies->new(
        file => 'cookies/mycookies.txt',
        autosave => 1
    )
);

# Request object
my $req = GET 'http://www.perlmeme.org';
#my $req = POST 'http://www.perlmeme.org', [name => 'Americo', age => 36];

# Make the request
my $res = $ua->request($req);

# Check the response
if ($res->is_success) {
    print $res->content;
} else {
    print $res->status_line . "\n";
}

#END
print "\nEnded with SUCCESS!!\n";
exit 0;
