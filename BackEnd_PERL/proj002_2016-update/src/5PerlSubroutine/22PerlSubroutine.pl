
use warnings;
use strict;

#Perl subroutine syntax
print qq^\n\n#1------------- \n^;
#procedure void in java
sub say_something{
     print "Hi, this is the first subroutine\n";
}
#call subroutine (both valid syntaxe)
&say_something;
say_something();

#When you use a reference that refers to the subroutine name
print qq^\n\n#2------------- \n^;
#reference
my $subref = \&say_something;
#dereferenced
&$subref;
&{$subref};

#Perl subroutine parameters
#In Perl, all input parameters of a subroutine are stored in a special array @_
#If you want to refer to the  nth argument, just use $_[n-1] syntax
print qq^\n\n#3------------- \n^;
print &sum(1..10), "\n";
#subroutine
sub sum{
    my $total = 0;
    for my $i(@_){
        $total += $i;
    }
    return $total;
}

#Passing parameters by references
print qq^\n\n#4------------- \n^;
my $a = 10;
my $b = 20;

do_something($a,$b);
print "after calling subroutine a = $a, b = $b \n";

sub do_something{
  $_[0] = 1;
  $_[1] = 2;
}

#Passing parameters by values
print qq^\n\n#5------------- \n^;
$a = 10;
$b = 20;

do_something($a,$b);
print "after calling subroutine a = $a, b = $b \n";

sub do_something{
  #lexical variables
  my ($p1,$p2) = @_;
  $p1 = 1;
  $p2 = 2;
  print "inside calling subroutine a = $p1, b = $p2 \n";
}

#Perl subroutine – returning values
#Implicit returning value
print qq^\n\n#6------------- \n^;
print &say_hi , "\n";
sub say_hi{
  my $name = 'Americo';
  print "Hi $name \n";
  $name;
}

#Explicit returning value with return statement
print qq^\n\n#7------------- \n^;
print &say_hi_explicit , "\n";
sub say_hi_explicit{
    my $name = 'Tomas';
    print "Hi $name \n";
    return $name;
}

#Returning undef value
print qq^\n\n#8------------- \n^;
my @a = ();
my $j = min(@a);

if(defined $j){
   print("Min of @a is $j \n");
}else{
   print("The array is empty.\n");
}

my @b = (100,12,31);
my $k = min(@b);

if(defined $k){
  print("Min of @b is $k \n");
}else{
   print("The array b is empty.\n");
}

sub min{
   my $minor = shift;
   return undef unless defined $minor;
   for (@_){
      $minor = $_ if $minor > $_;
   }
   return $minor;
}

#Passing Array Reference to Subroutine
print qq^\n\n#9------------- \n^;
my @a = (1,3,2,6,8,4,9);
my $m = &max(\@a);

print "The max of @a is $m\n";

sub max{
    my $aref = $_[0];
    my $k = $aref->[0];

    for(@$aref){
        $k = $_ if($k < $_);
    }
    return $k;
}

#Returning an array from a subroutine
print qq^\n\n#10------------- \n^;
my @a = (1,3,2,6,7);
my @b = (8,4,9);

my @c = pops(\@a,\@b);
print("@c \n"); # 7, 9

sub pops{
    my @ret = ();

    for my $aref(@_){
        push(@ret, pop @$aref);
    }
    return @ret;
}
