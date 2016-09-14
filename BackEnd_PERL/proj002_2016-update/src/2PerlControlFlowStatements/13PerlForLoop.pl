#!/usr/bin/perl
use warnings;
use strict;

#Perl for and foreach statements
print qq^\n\n#1------------- \n^;
my @a = (1..9);
for(@a){
 print("$_","\n");
}

print qq^\n\n#2------------- \n^;
foreach(@a){
 print("$_","\n");
}

#for loop iterator
print qq^\n\n#3------------- \n^;
my @a = (1..9);
for my $i (@a){
 print("$i","\n");
}

print qq^\n\n#3------------- \n^;
my @a = (1..9);
my $i = 20;
for $i (@a){
 print("$i","\n");
}
print('iterator $i is ',"$i","\n"); # 20

#Perl for loop iterator: value or alias
print qq^\n\n#4------------- \n^;
my @b = (1..5);
print("Before the loop: @b \n");

for(@b){
 $_ = $_ * 2;
}
print("After the loop: @b \n");

#Perl C-style for loop
print qq^\n\n#5------------- \n^;
my @c = (1..6);
for(my $i = 0; $i <= $#c; $i++){
 print("$c[$i] \n");
}
