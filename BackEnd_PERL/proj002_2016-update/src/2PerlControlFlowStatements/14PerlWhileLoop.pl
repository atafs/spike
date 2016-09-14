#!/usr/bin/perl
use warnings;
use strict;

#Perl while loop example
print qq^\n\n#1------------- \n^;
my $counter = 5;
while($counter > 0){
   print("$counter\n");
   # count down
   $counter--;
   # pause program for 1 second
   sleep(1);
   if($counter == 0){
     print("Happy New Year!\n");
   }
}

#Perl while loop with diamond operator <>
print qq^\n\n#2------------- \n^;
my $num;
my @numbers = ();

print "Enter numbers, each per line :\n";
print "ctrl-z (windows) or ctrl-d(Linux) to exit\n>";

while(my $input = <>) {
  print(">");
  chomp $input;
  $num = int($input);
  push(@numbers, $num);
}

print "You entered: @numbers\n";

#Perl while loop statement modifier
print qq^\n\n#3------------- \n^;

my $i = 5;
print($i--,"\n") while($i > 0);
