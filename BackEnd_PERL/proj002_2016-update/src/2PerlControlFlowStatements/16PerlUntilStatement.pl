#!/usr/bin/perl
use warnings;
use strict;

#it executes a block of code as long as the condition is false
print qq^\n\n#1------------- \n^;
my $counter = 5;

until($counter == 0){
   print("$counter \n");
   $counter--;
}

#Perl until statement and array example
print qq^\n\n#2------------- \n^;
my $counter = 0;
my @keywords = qw(until while do for loop);

until(!scalar @keywords) {
  $counter++;
  print shift(@keywords) . "\n";

}
print("$counter elements removed!\n");
