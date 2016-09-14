REM check perl
perl -v

REM install dancer2
cpanm Dancer2

REM create the app (capital letter for the first one in the name of the app)
dancer2 -a Try::Me

REM go to the app directory and run the server
cd Try-Me
plackup -R . bin/app.psgi
