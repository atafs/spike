#!/usr/bin/perl
use warnings;
use strict;

#Perl open file function
# - open(filehandle,mode,filename)
# - FH (file handler)

print qq^\n\n#1------------- \n^;
#windows path
my $filename = 'C:\Users\AdminPC\iCloudDrive\spike\BackEnd_PERL\proj002_2016-update\src\8PerlFile_IO\io\open.txt';

#open with handle a file-opening failure
open(FH, '<', $filename) or die $!;
#print
print("File: \n - " . $filename . "\n - opened successfully!\n");
#close
close(FH);
