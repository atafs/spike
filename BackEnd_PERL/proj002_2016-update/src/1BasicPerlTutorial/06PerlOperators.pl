#!/usr/bin/perl
use warnings;
use strict;

#Numeric operators
print qq/\nNumeric operators ###\n/;
print 10 + 20, "\n"; # 20
print 20 - 10, "\n"; # 10
print 10 * 20, "\n"; # 200
print 20 / 10, "\n"; # 2
print 10 + 20/2 - 5 * 2 , "\n"; # 10
print (((10 + 20)/2 - 5) * 2); # 20;
print 2**3, "\n"; # = 2 * 2 * 2 = 8.
print 3**4, "\n"; # = 3 * 3 * 3 * 3 = 81.
print 4 % 2, "\n"; # 0 even
print 5 % 2, "\n"; # 1 odd

#Bitwise Operators
print qq/\nBitwise Operators ###\n/;
my $a = 0b0101; # 5
my $b = 0b0011; # 3

my $c = $a & $b; # 0001 or 1
print $c, "\n";

$c = $a | $b; # 0111 or 7
print $c, "\n";

$c = $a ^ $b; # 0110 or 6
print $c, "\n";

$c = ~$a; # 11111111111111111111111111111010 (64bits computer) or 4294967290
print $c, "\n";

$c = $a >> 1; # 0101 shift right 1 bit, 010 or 2
print $c, "\n";

$c = $a << 1; # 0101 shift left 1 bit, 1010 or 10
print $c, "\n";

#Comparison operators for numbers (spaceship operator)
print qq/\nComparison operators for numbers ###\n/;
my $a = 10;
my $b = 20;

print $a <=> $b, "\n";

$b = 10;
print $a <=> $b, "\n";

$b = 5;
print $a <=> $b, "\n";

#String operators
  print qq/\nString operators ###\n/;
  print "This is" . " concatenation operator" . "\n";
  print "a message \n" x 4, "\n";

  #remove the new line character \n
  my $s;
  chomp($s = <STDIN>);
  print $s;

  #Logical operators
  # http://www.perltutorial.org/perl-operators/
  
