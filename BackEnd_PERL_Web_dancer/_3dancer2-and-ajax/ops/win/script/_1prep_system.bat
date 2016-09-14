REM check perl
perl -v

REM create the app (capital letter for the first one in the name of the app)
dancer2 -a D2::Ajax

REM go to the app directory and run the server
cd D2::Ajax
plackup -R . bin/app.psgi

REM Run tests
perl Makefile.PL
make
make test
