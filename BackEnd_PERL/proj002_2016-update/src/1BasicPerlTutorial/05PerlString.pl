
use warnings;
use strict;

#Introduction to Perl string
my $s1 = "string with doubled-quotes";
my $s2 = 'string with single quote';
print("\n#Introduction to Perl string: $s1\n");
print("\n#Introduction to Perl string: $s2\n");
print("\n" , '\n#Introduction to Perl string: $s2\n' , "\n");
print("\n" . '\n#Introduction to Perl string: $s2\n' . "\n");

#Perl string alternative delimiters
my $s= q/"Are you learning Perl String today?" We asked./;
print("\n", $s ,"\n");

my $name = 'Jack';
my $s3 = qq/"Are you learning Perl String today?" $name asked./;
print("\n", $s3 ,"\n");

my $s4 = q^A string with different delimiter.^;
print("\n", $s4,"\n");

#Perl string functions
  #Perl string length
  my $s5 = "This is a string!!\n";
  print("\n#Perl string functions: ", length($s5),"\n"); #19

  #Changing cases of string
  my $s6 = "Change cases of a string\n";
  print("\nTo upper case:\n");
  print("#Perl string functions: ", uc($s6),"\n");

  print("\nTo lower case:\n");
  print("#Perl string functions: ", lc($s6),"\n");

  #Search for a substring inside a string
  my $s = "Learning Perl is really really easy\n";
  my $sub = "Perl";
  my $p = index($s,$sub); # rindex($s,$sub);
  print(qq\The substring "$sub" found at position "$p" in string "$s"\,"\n");

  #Get or modify substring inside a string
  #extract substring
  my $s = "Green is my favorite color";
  my $color  = substr($s, 0, 5);      # Green
  my $end    = substr($s, -5);        # color

  print($end,": ",$color,"\n");

  #replace substring
  substr($s, 0, 5, "Red"); #Red is my favorite color
  print($s,"\n");

  #Other useful Perl string functions
  # http://www.perltutorial.org/perl-string/

  
