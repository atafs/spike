#!/usr/bin/perl
use warnings;
use strict;

#Perl last statement examples
print qq^\n\n#1------------- \n^;
my ($key, $value);

my %h = (
  "apple" => 1,
  "orange" => 2,
  "mango" => 3,
  "coconut" => 4,
  "banana" => 5
);

print("Please enter a key to search:\n");
$key = <STDIN>;
chomp($key);
$value = 0;

# searching
foreach(keys %h){
    if($_ eq $key){
       $value = $h{$_};
       last;  # stop searching if found
    }
}

# print the result
if($value > 0){
   print("element $key found with value: $value\n");
}else{
   print("element $key not found\n");
}

#Perl last statement with loop label example
print qq^\n\n#2------------- \n^;
my ($key, $value);

my %h = (
  "apple" => 1,
  "orange" => 2,
  "mango" => 3,
  "coconut" => 4,
  "banana" => 5
);

$value = 0;
print("Please enter a key to search:\n");

OUTER: while(<STDIN>){
   # get input form user
   $key = $_;
   chomp($key);
   # seaching
   INNER: foreach(keys %h){
            if($_ eq $key){
               $value = $h{$_};
               last OUTER;  # exit the while loop
            }
           }  # end for
           print("Not found, Please try again:\n") if($value == 0);

}# end while
print("element found with value: $value\n");
