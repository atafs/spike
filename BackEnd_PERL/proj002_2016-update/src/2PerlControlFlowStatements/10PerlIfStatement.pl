#!/usr/bin/perl
use warnings;
use strict;

#Simple Perl if statement
my $flag_print = 1;
print qq^\n#0------------- \n^;
print("Welcome to Perl if tutorial\n") if($flag_print == 1);

if($flag_print == 1){
  print qq^\n\n#1------------- \n^;
  print("Welcome to the Perl if tutorial!\n");
  print("another form of the Perl if statement\n");
}

#Perl if else statement
my $a = 1, $b = 2;
if($a == $b){
  print qq^\n\n#2------------- \n^;
  print("a and b are equal\n");
}else{
  print qq^\n\n#2------------- \n^;
  print("a and b are not equal\n");
}

#Perl if elsif statement
if($a == $b){
  print qq^\n\n#3------------- \n^;
  print("a and b are equal\n");
}elsif($a > $b){
  print qq^\n\n#3------------- \n^;
  print("a is greater than b\n");
}else{
  print qq^\n\n#3------------- \n^;
  print("a is less than b\n");
}

#Perl if statement example
my ($l_curr, $f_curr, $l_amount, $f_amount);

my %rates = (
     USD => 1,
     YPY => 82.25,
     EUR => 0.78,
     GBP => 0.62,
     CNY => 6.23
);

# print supported currencies
print qq^\n\n#4------------- \n^;

print("Supported currency:\n");
for(keys %rates){
 print(uc($_),"\n");
}

# get inputs from users:
print qq^\n\n#INPUT DATA------------- \n^;
print("Enter local currency:\n");
$l_curr = <STDIN>;

print("Enter foreign currency:\n");
$f_curr = <STDIN>;

print("Enter amount:\n");
$l_amount = <STDIN>;

chomp($l_curr,$f_curr,$l_amount);

# check user's inputs.
if(not exists $rates{$l_curr}){
     print("Local currency is not supported\n");
}
elsif(not exists $rates{$f_curr}){
     print("Foreign currency is not supported\n");
}
else{
     # convert from local currency to foreign currency
     $f_amount = ($rates{$f_curr} / $rates{$l_curr}) * $l_amount;

     # print out the result
     print("$l_amount $l_curr = $f_amount $f_curr","\n");
}
