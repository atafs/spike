
use warnings;
use strict;

#constants
use constant MAX => 5;


#Perl next with the for statement example
print qq^\n\n#1------------- \n^;
my @haystack = (1,4,3,2,5,6,8,7,9);

# get an integer in the range 1-9 from command line
my $needle = 0;
do{
   print "Enter a number to search(1-9):\n";
   $needle = int(<STDIN>);
}until($needle >= 1 && $needle <= 9);

# find the position of the input integer
my $pos = -1;
for my $i (@haystack){
   $pos++;
   next if($i != $needle);
   print("Found number $needle at position $pos\n");
}

#Perl next with while loop example
print qq^\n\n#2------------- \n^;
my @nums = ();
my $num = 0;
my $count = 0;

print "Enter " . MAX . " positive integers:\n";

while($count < MAX){
   $num = int(<STDIN>);
   # skip if the input number is not the positive integer
   next if($num <= 0);

   # push the positive integer to the array
   push(@nums,$num);
   $count++;
}

print("You entered: @nums\n");
