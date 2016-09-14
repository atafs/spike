REM go to the script to run the .bat file
cd C:\Users\AdminPC\iCloudDrive\spike\BackEnd_PERL\proj002_2016-update\run\win

REM run app in VM windows
cd C:\Users\AdminPC\iCloudDrive\spike\BackEnd_PERL\proj002_2016-update\src

REM get version of perl installed in this machine
perl -v > C:\Users\AdminPC\iCloudDrive\spike\BackEnd_PERL\proj002_2016-update\run\win\perl-v.txt

REM go into folder
cd C:\Users\AdminPC\iCloudDrive\spike\BackEnd_PERL\proj002_2016-update\src\1BasicPerlTutorial

cls
perl 01HelloWorld.pl
timeout /t 5

cls
perl 02PerlSyntax.pl
timeout /t 5

cls
perl 03PerlVariable.pl
timeout /t 5

cls
perl 04PerlNumbers.pl
timeout /t 5

cls
perl 05PerlString.pl
timeout /t 5

cls
perl 06PerlOperators.pl
timeout /t 5

cls
perl 07PerlList.pl
timeout /t 5

cls
perl 08PerlArray.pl
timeout /t 5

cls
perl 09PerlHash.pl
timeout /t 5

REM go into folder
cd ..
cd C:\Users\AdminPC\iCloudDrive\spike\BackEnd_PERL\proj002_2016-update\src\2PerlControlFlowStatements

cls
perl 10PerlIfStatement.pl
timeout /t 5

cls
perl 11PerlUnlessStatements.pl
timeout /t 5

cls
perl 12PerlGiven.pl
timeout /t 5

cls
perl 13PerlForLoop.pl
timeout /t 5

cls
perl 14PerlWhileLoop.pl
timeout /t 5

cls
perl 15PerlDoWhile.pl
timeout /t 5

cls
perl 16PerlUntilStatement.pl
timeout /t 5

cls
perl 17PerlDoUntilStatement.pl
timeout /t 5

cls
perl 18PerlNextStatement.pl
timeout /t 5

cls
perl 19PerlLastStatement.pl
timeout /t 5

REM go into folder
cd ..
cd C:\Users\AdminPC\iCloudDrive\spike\BackEnd_PERL\proj002_2016-update\src\4PerlReference

cls
perl 20PerlReference.pl
timeout /t 5

cls
perl 21PerlReferenceTypesAutovification.pl
timeout /t 5

REM go into folder
cd ..
cd C:\Users\AdminPC\iCloudDrive\spike\BackEnd_PERL\proj002_2016-update\src\5PerlSubroutine

cls
perl 22PerlSubroutine.pl
timeout /t 5

REM go into folder
cd ..
cd C:\Users\AdminPC\iCloudDrive\spike\BackEnd_PERL\proj002_2016-update\src\6PerlPackagesModules

cls
perl 23PerlModule.pl
timeout /t 5

REM go into folder
cd ..
cd C:\Users\AdminPC\iCloudDrive\spike\BackEnd_PERL\proj002_2016-update\src\7PerlOOP

cls
perl 24PerlOOPrules.pl
timeout /t 5

REM go into folder
cd ..
cd C:\Users\AdminPC\iCloudDrive\spike\BackEnd_PERL\proj002_2016-update\src\8PerlFile_IO

cls
perl 25PerlOpenFile.pl
timeout /t 5

cls
perl 26PerlReadFile.pl
timeout /t 5

cls
perl 27PerlReadFileFromBash.pl
timeout /t 5

cls
perl 28PerlWriteFile.pl
timeout /t 5

cls
perl 29PerlReadAndWriteFileFromBash.pl
timeout /t 5
