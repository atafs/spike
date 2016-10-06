
use warnings;
use strict;

#Perl integers
my $x = 20;
my $y = 100;
my $z = -200;
my $a = 123_763_213;

#ASCII table http://lwp.interglacial.com/appf_01.htm
my $decimal = 12;
my $binary = 0b1100;
my $octal = 014;
my $hexa = 0x0C;

#Perl floating-point numbers
my $fixed_point = 100.25;
my $scientific_point1 = +1.0025e2;
my $scientific_point2 = -1.0025E2;

#prints
print("\n#Perl integers: $x\n");
print("\n#Perl integers: $y\n");
print("\n#Perl integers: $z\n");
print("\n#Perl integers: $a\n");
print("\n#Perl integers: ", $a, "\n"); # 123763213
print("\n#Perl integers: ", $decimal, "\n");
print("\n#Perl integers: ", $binary, "\n");
print("\n#Perl integers: ", $octal, "\n");
print("\n#Perl integers: ", $hexa, "\n");
print("\n#Perl floating-point numbers: ", $fixed_point, "\n");
print("\n#Perl floating-point numbers: ", $scientific_point1, "\n");
print("\n#Perl floating-point numbers: ", $scientific_point2, "\n");
