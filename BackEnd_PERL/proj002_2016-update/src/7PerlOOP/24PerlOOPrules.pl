#!/usr/bin/perl
use warnings;
use strict;

#IMPORT
use package::object::Product;

#INSTANTIATE
my $iphone = Product->new(
  {
    serial =>"100",
    name => "iPhone 5",
    price => 650.00
  }
);

my $nexus = Product->new(
  {
    serial =>"101",
    name => "Nexus",
    price => 299.00
  }
);

#PRINT toSting
print qq^\n\n#1------------- \n^;
print $iphone->to_string();

print qq^\n\n#2------------- \n^;
print $nexus->to_string();
