REM check perl
perl -v

REM update dancer
REM verbose: to see what is being installed in the machine
REM force: nneded because I having errors in the instalation
REM run this command where the app is going to be installed
cpanm --verbose --force Dancer

REM create the app (capital letter for the first one in the name of the app)
dancer -a Echo

REM go to the app directory and run the server
cd Echo
perl bin\app.pl
