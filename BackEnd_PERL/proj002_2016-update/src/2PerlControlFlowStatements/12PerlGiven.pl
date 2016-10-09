
use warnings;
use strict;
use experimental qw(smartmatch switch);

#Perl given statement examples
my $color;
my $code;

print qq^\n\n#INPUT1 DATA----------------------- \n^;
print("Please enter a RGB color to get its code:\n");
$color = <STDIN>;
chomp($color);
$color = uc($color);

given($color) {
     when ('RED') {  $code = '#FF0000'; }
     when ('GREEN') {  $code = '#00FF00'; }
     when ('BLUE') {  $code = '#0000FF'; }
     default{
         $code = '';
     }
}
if($code ne ''){
   print("\n", "code of $color is $code \n");
}
else{
    print("\n", "$color is not RGB color\n");
}

#From Perl version 5.12
print qq^\n\n#INPUT2 DATA----------------------- \n^;
print("Please enter a RGB color to get its code:\n");
$color = <STDIN>;
chomp($color);
$color = uc($color);

given($color){
     $code = '#FF0000' when 'RED';
     $code = '#00FF00' when 'GREEN';
     $code = '#0000FF' when 'BLUE';
     default{  $code = '';}
}

if($code ne ''){
   print("\n", "code of $color is $code \n");
}
else{
    print("\n", "$color is not RGB color\n");
}

#TLet’s get into a more complex
print qq^\n\n#INPUT2 DATA----------------------- \n^;
print 'Enter a string with data (letters, numbers or both): ';
chomp( my $input = <> );

print do {
    given ($input) {
      "\nThe INPUT has numbers\n"  when /\d/;
      "\nThe INPUT has letters\n"  when /[a-zA-Z]/;
       default { "The input has neither number nor letter\n"; }
   }
}
