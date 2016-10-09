
use warnings;
use strict;

#Simple Perl unless statement
#(The Perl unless statement is equivalent to the if not statement)

#If this is not true, then do this (use if not statement).
#Unless it is true, then do this (use unless statement).

# unless == !(condition)
my $ten = 10;
unless($ten <= 0){
   print("\n", "$ten is greater than 0\n")
}

#Perl unless else statement
unless($ten >= 0){
   print("\n", "$ten is less than 0\n");
}else{
   print("\n", "$ten is greater than or equal 0\n");
}

#Perl unless elsif else statement
my $a = 1;

unless($a > 0){
   print("\n", "a is less than 0\n");
}elsif($a == 0){
   print("\n", "a is 0\n");
}else{
   print("\n", "a is greater than 0\n");
}

#Perl unless statement guidelines
$a = 1;
print("\n", "Perl unless used with a very simple condition ONLY.\n") unless($a < 0);

my $b = 10;
my $c = 20;
unless($a < 0 && $b == 10 && $c > 0){
  print("\n", "unless used with a very complex condition\n");
}
