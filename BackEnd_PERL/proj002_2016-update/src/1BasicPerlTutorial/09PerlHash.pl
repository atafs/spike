
use warnings;
use strict;

#Introduction to Perl hash
my %countries = qw(England English
                   France French
                   Spain Spanish
                   China Chinese
                   Germany German);

print qq^\n#0------------- \n^;
print(%countries, "\n\n");

my $count = 0;
print qq^\n#1------------- \n^;
foreach my $n (%countries) {
 $count++;
 print qq^$count : \t$n \n^;
}

my %countries1 =  (
  England => 'English',
  France => 'French',
  Spain => 'Spanish',
  China => 'Chinese',
  Germany => 'German'
);
$count = 0;
print qq^\n#2------------- \n^;
foreach my $n (%countries1) {
 $count++;
 print qq^$count : $n \n^;
}

#Perl hash operations
my %langs = (
  England => 'English',
  France => 'French',
  Spain => 'Spanish',
  China => 'Chinese',
  Germany => 'German'
);

#Add a new element
$langs{'Italy'} = 'Italian';
$langs{'Portugal'} = 'Portuguese';

# get language of Portugal
print qq^\n#3------------- \n^;
my $lang1 = $langs{'Portugal'}; # Portuguese
print($lang1, "\n");

#Remove a single key/value pair
delete $langs{'China'};

print qq^\n#4------------- \n^;
for(keys %langs){
 print("Official Language of $_ is $langs{$_}\n");
}

#Modify hash elements
# add new key value pair
$langs{'India'} = 'Many languages';
# modify official language of India
$langs{'India'} = 'Hindi'; #

print("Ended with Success!!\n");
