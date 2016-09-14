#!/usr/bin/perl
use strict;
use warnings;
use LWP::Simple;

#retrieving the HTML to a variable
my $content = get('http://www.perlmeme.org') or die 'Unable to get page';

#STDOUT
getprint('http://www.perlmeme.org') or die 'Unable to get page';

#write it directly to a file
getstore('http://www.perlmeme.org', 'html5/test.html') or die 'Unable to get page';

#END
print "\nEnded with SUCCESS!!\n";


exit 0;
