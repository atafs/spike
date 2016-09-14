package FileLogger; # FileLogger.pm

use strict;
use warnings;

#global variable  $LEVEL so that any subroutine can access it
my $LEVEL = 1;

#subroutines -----------------------------------------------
#open the log file for writing log messages
sub open{
   my $logfile = shift;
   # open log file for appending
   open(LFH, '>>', $logfile) or die "cannot open the log file $logfile: $!";
   # write time:
   print LFH "Time: ", scalar(localtime), "\n";
}

#append log messages to the log file
sub log{
   my($log_level,$log_msg) = @_;

   if($log_level <= $LEVEL){
      print LFH "$log_msg\n";
   }
}

#close the log filehandle
sub close{
   close LFH;
}

#allow other programs to change the log level  $LEVEL from the outside of the module
sub set_level{
   my $log_level = shift;

   if($log_level =~ /^\d+$/){
      $LEVEL = $log_level;
   }
}

#last statement in the  FileLogger.pm file: 1; to make the file returns true
1;
