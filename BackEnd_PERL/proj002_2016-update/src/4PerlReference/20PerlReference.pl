
use warnings;
use strict;

#A reference holds a memory address of the object that it points to

#Perl scalar references
print qq^\n\n#1------------- \n^;
#scalar variable
my $x = 10;
#reference to scalar variable
my $xr = \$x;

# change $x via $xr
$$xr = $$xr * 2;

print("$x\n"); # 20
print("$$xr \n");  # 20
print("$xr\n"); # SCALAR(0x1d2e6e4)

#Perl array references
print qq^\n\n#2------------- \n^;
#variable
my @a = (1..5);
#reference
my $ar = \@a;

my $i = 0;
#dereferenced
for(@$ar){
    print("$ar->[$i++] \n");
}

#Perl hash references
#Because a hash element is a scalar, to access hash elements through the reference you use operator -> as follows
print qq^\n\n#3------------- \n^;
#variable
my %months= (
  Jan => 1,
  Feb => 2,
  Mar => 3,
  Apr => 4,
  May => 5,
  Jun => 6,
  Jul => 7,
  Aug => 8,
  Sep => 9,
  Oct => 10,
  Nov => 11,
  Dec => 12
);
#reference
my $monthr = \%months;
#dereferenced and use special operator ->
for(keys %$monthr){
    print("$_  = $monthr->{$_}\n");
}
