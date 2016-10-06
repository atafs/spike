
use warnings;
use strict;

#Introduction to Perl do until statement
print qq^\n\n#1------------- \n^;
my $cmd;
print("Enter a command, enter q to quit.\n");
do {
  print(">");
  chomp($cmd = <STDIN>);
  $cmd = lc($cmd);
  print("You entered:$cmd\n");
}until($cmd eq "q");

#Perl do until with next and last
my $x = 0;
my $y = 10;

do {{

 $x++;
 next if $x % 2 == 1;
 print("$x\n");

}}until($x == $y);


#Perl do until with the last statement
print qq^\n\n#2------------- \n^;
my $needle = int(rand(10));   # secret number between 0 and 9
my $max = 4;                  # the maximum number of attempts
my $attempt = 0;              # attempt counter
my $num = 0;                  # user's input number

print("Enter a number(0-9) to match, 3 times ONLY, -1 to quit:\n");

game:{
 do {
      # ask player to enter a secret number
      if($attempt < $max){
           print(">");
           $num = int(<STDIN>);
           last if $num == -1;
           # increase the allowed attempts
           $attempt++;

      }else{
           print("Game over!\n");
           last;
      }

      # display the hints
      if($num < $needle){
           print "It should be greater.\n";
      }elsif($num > $needle){
           print "It should be smaller\n";
      } else{
           print "Bingo!\n";
      }
 }until($num == $needle);
}
