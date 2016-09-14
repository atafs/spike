#!/usr/bin/perl
use warnings;
use strict;

#Simple Perl list
();                           #empty list.
#(10,20,30);                   #list of integers.
#("this", "is", "a","list");   #list of strings.

print(()); # display nothing
print("\n");
print(10,20,30); # display 10,20,30
print("\n");
print("this", "is", "a","list"); # display: thisisalist
print("\n");

#Complex Perl list
my $x = 10;
my $s = "a string";
print("complex list", $x , $s ,"\n");

#Using qw function
print('red','green','blue'); # redgreenblue
print("\n");

#quote word
print(qw(red green blue)); # redgreenblue
print("\n");

#you can use any non-alphanumeric character as a delimiter
print("\n", qw\this is a list\);
print("\n", qw{this is a list});
print("\n", qw[this is a list]);

#Fattening list (the following lists are the same)
print("\n", (2,3,4,(5,6)));
print("\n", (2,3,4,5,6));
print("\n", ((2,3,4),5,6));

#Accessing list element
print "\n"; # new line
print(
     (1,2,3)[0] # 1 first element
);
print "\n"; # new line

print(
     (1,2,3)[2] # 3 third element
);
print "\n"; # new line

#Ranges
my $firstVar = "10";
my @array = ("01"..$firstVar);
print("\n", $firstVar);
print("\n", @array);
