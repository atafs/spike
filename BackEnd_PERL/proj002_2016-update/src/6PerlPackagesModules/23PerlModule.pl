
use warnings;
use strict;

#Perl module example

#Using Perl Module FileLogger
print qq^\n\n#1------------- \n^;
use package::FileLogger;

#in module FileLogger, I am calling it´s subroutines with ::
print qq^printing to log::logtest.log info!! \n^;
FileLogger::open("log/logtest.log");
FileLogger::log(1,"This is a test message");
FileLogger::close();
