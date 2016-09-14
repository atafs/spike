#!/usr/bin/perl
use warnings;

#Values and Variables, Expressions
$x = 10;
$y = 20;
$s = "Perl string";

#Statements
$sum = $x + $y;

#Blocks
{
  $a = 1;
  $a = $a + 1;
  print("\n#Blocks: $a\n");
}
#Comments
# increase salary %5 for employee who achieves exceptional rating
$salary = 1200;
$salary = $salary * 1.05;

#PRINT
print("\n#Values and Variables: $x\n");
print("\n#Values and Variables: $y\n");
print("\n#Values and Variables: $s\n");
print("\n#Expressions: $sum\n");
print("\n#Comments: $salary\n");
print("\n#Blocks: $a\n");
