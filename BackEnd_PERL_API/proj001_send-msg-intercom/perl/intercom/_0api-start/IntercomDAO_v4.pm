package MF::IntercomDAO;

use warnings;
use strict;

#IMPORTS
use LWP::Simple;
use LWP::UserAgent;

$ENV{'PERL_LWP_SSL_VERIFY_HOSTNAME'} = 0;

my $url = 'http://freshair.npr.org/dayFA.cfm?todayDate=current';
    # Just an example: the URL for the most recent /Fresh Air/ show

my $content = get $url;
die "Couldn't get $url" unless defined $content;

# Then go do things with $content, like this:

if($content =~ m/jazz/i) {
  print "They're talking about jazz today on Fresh Air!\n";
} else {
  print "Fresh Air is apparently jazzless today.\n";
}
