
use warnings;
use strict;


print qq^\n\n#1------------- \n^;
my $ar = [1..5];

# loop over the array elements
for(@$ar){
   print("$_  "); # 1 2 3 4 5
}
print("\n");

#You can put references inside a reference
print qq^\n\n#2------------- \n^;
my $ar = [1..5,[6..9]];

# loop over the array elements
my $i = 0;
for(@$ar){
   if($i == 5){
      print(", array reference: @$_");
   }
   else{
      print("$_  "); # 1 2 3 4 5
   }
   $i++;

}
print("\n"); # 1  2  3  4  5  , array reference: 6 7 8 9

#Anonymous hash references
print qq^\n\n#3------------- \n^;
my $address = {
  "building" => 1000,
  "street" => "ABC street",
  "city"   => "Headquarter",
  "state" => "CA",
  "zipcode" => 95134,
  "country" => "USA"
};

print $address->{building} , "\n";
print $address->{street} , "\n";

#Autovivification
#- creates and expands data structure at the first use. The autovivification applies to not only scalars but also arrays and hashes
print qq^\n\n#4------------- \n^;
my $foo->{address}->{building} = 1000;

print $foo, "\n"; # HASH(0x3bad24)
print $foo->{address}, , "\n"; # HASH(0x3bae04)
print $foo->{address}->{building},"\n"; # 1000
