
use warnings;
use strict;

#Perl Write to File
print qq^\n\n#1------------- \n^;
my $str = <<END;
This is the sample text
that is used to write to file

?is it appending?
- NO. Just deletes the old message and copies this one!!
END

my $filename = 'C:\Users\AdminPC\iCloudDrive\spike\BackEnd_PERL\proj002_2016-update\src\8PerlFile_IO\io\write.txt';
open(FH, '>', $filename) or die $!;
print FH $str;
close(FH);

print "Writing to file successfully!\n";


#read the content of one file and write it another file.
print qq^\n\n#2------------- \n^;
my $src = 'C:\Users\AdminPC\iCloudDrive\spike\BackEnd_PERL\proj002_2016-update\src\8PerlFile_IO\io\read.txt';
my $des = 'C:\Users\AdminPC\iCloudDrive\spike\BackEnd_PERL\proj002_2016-update\src\8PerlFile_IO\io\write-from-read-file.txt';

# open source file for reading
open(SRC,'<',$src) or die $!;
# open destination file for writing
open(DES,'>',$des) or die $!;

print("copying content from $src to $des\n");
while(<SRC>){
   print DES $_;
}
# always close the filehandles
close(SRC);
close(DES);

print "File content copied successfully!\n";
