#!/usr/bin/perl
use warnings;
use strict;

#Perl do while loop example
print qq^\n\n#1------------- \n^;
my $command;
print("Enter a command, bye to quit.\n");

do {
  print(">");

  # convert command to lowercase
  chomp($command = <STDIN>);
  $command = lc($command);
  # display the command
  print("$command\n");
}while($command ne "bye");

#The next statement allows you to start the next iteration of the loop and skips the rest of the code below it
print qq^\n\n#2------------- \n^;
my @a = (1,3,2,4,6,9,8);
my $sum_even = 0;
my $num = 0;

do {{
 # get the next array element
 $num = shift(@a);
 # skip if the  element is odd number
 next if $num % 2 == 1;
 # calculate total of even numbers
 $sum_even += $num;

}}until(!scalar @a > 0);
print("$sum_even\n");

#The last statement exits the do while loop immediately. It acts like the break statement in C.
print qq^\n\n#3------------- \n^;
my @haystack = qw(1 3 2 4 5 9 8 6 7);

my $count = scalar @haystack;
my $i = 0;
my $needle;

print("Enter a number to search (1-9):");
$needle = int(<STDIN>);

find_needle_in_haystack:{
 do {
  if($haystack[$i] == $needle){
    print("Number $needle found at position $i\n");
    # exit the loop
    last;
  }
  # next element
  $i++;
 }until($i == $count);
}
