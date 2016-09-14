REM open api page (links of the apps)
cd html
start cmd /C api.html
timeout 1

REM path
cd E:\PERL_DANCER\_1general\ops\win\script
REM run all the app servers (call)
start cmd /C call _2run_multiple_app1echo.bat
timeout 1
start cmd /C call _2run_multiple_app2blog.bat
timeout 1

REM path
cd E:\PERL_DANCER\_2dancer2\ops\win\script
REM run all the app servers (call)
start cmd /C call _2run_app.bat
timeout 1

REM path
REM cd E:\PERL_DANCER\_3dancer2-and-ajax\proj001_ajax-dancer2\ops\win\script
REM run all the app servers (call)
REM start cmd /C call _2run_app.bat
REM timeout 1

exit
