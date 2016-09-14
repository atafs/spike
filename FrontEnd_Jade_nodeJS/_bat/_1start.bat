REM 1_ install jade
npm install jade -g

REM 2_ open and save a file with the extension .jade

REM 3_ render file (sort of a compilation) HTML
jade _1begin.jade

REM for generating Javascript file
jade --client --no-debug _2sintaxe.jade

REM 4_ run html page in web
