#!/usr/bin/perl
use warnings;
use strict;

#Introduction to Perl array
my @days = qw(Mon Tue Wed Thu Fri Sat Sun);
print("\n", "@days" ,"\n");

#Accessing Perl array elements
print("\n", $days[0]);
print("\n", $days[-1]);

my @weekend = @days[-2..-1]; # SatSun
print("\n", @weekend);

#Counting Perl array elements (cast in java)
my $count = scalar @days;
print("\n", $count);

#The operator $# returns the highest index of an array
my $last = $#days;
print("\n", $last); #" 6

#Modifying Perl array elements
$days[0] = 'Monday';
@days[1..6] = qw(Tuesday Wednesday Thursday Friday Saturday Sunday);
print("\n", @days, "\n\n");

#Perl array operations
#Perl array as a stack with push() and pop() functions
my @stack = (); # empty array

print("push 1 to array\n");
push(@stack,1);
print("push 2 to array\n");
push(@stack,2);
print("push 3 to array\n");
push(@stack,3);

print("Array values: ", @stack, "\n\n");

my $elem = pop(@stack);
print("element: $elem\n");
$elem = pop(@stack);
print("element: $elem\n");
$elem = pop(@stack);
print("element: $elem\n");

print("Array values: ", @stack, "\n\n");

#Perl array as a queue with unshift() and pop() functions
my @queue = (); # empty queue

print("enqueue 1 to array\n");
unshift(@queue,1);
print("enqueue 2 to array\n");
unshift(@queue,2);
printf("enqueue 3 to array\n");
unshift(@queue,3);

print("@queue", "\n\n"); # 3 2 1

my $elem = pop(@queue);
print("element: $elem\n");
$elem = pop(@queue);
print("element: $elem\n");
$elem = pop(@queue);
print("element: $elem\n");

print("@queue", "\n\n"); # 3 2 1

#Sorting Perl arrays
my @fruits = qw(oranges apples mango cucumber);
my @sorted = sort @fruits;

print(@sorted, "\n\n"); # apples cucumber mango oranges
my $count = 0;
foreach my $n (@sorted) {
  $count++;
  print qq^$count : $n \n^;
}
