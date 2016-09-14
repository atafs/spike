#!/usr/bin/perl
use warnings;
use strict;

#GLOBAL even to external packages
our $colorExternal = 'white';

#GLOBAL Declaring variables
my $color = 'red';
print "\nYour favorite #0 color is "  . $color ."\n";

#Perl variable scope
{
  #LOCAL
  my $color = 'blue';
  print("my favorite #1 color is " . $color . "\n");
}
# for checking
print("my favorite #2 color is " . $color . "\n");
print("my favorite #3 color is " . $colorExternal . "\n");


#Perl variable interpolation
my $amount = 20;
my $s = "The amount is $amount\n";
print("\n#Perl variable interpolation: $s\n");
