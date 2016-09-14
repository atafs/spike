#!/usr/bin/perl
use warnings;
use strict;


print qq^\n\n#1------------- \n^;
my $filename = 'C:\Users\AdminPC\iCloudDrive\spike\BackEnd_PERL\proj002_2016-update\src\8PerlFile_IO\io\read.txt';
open(FH, '<', $filename) or die $!;

#print all lines
while(<FH>){
   print $_;
}
close(FH);
