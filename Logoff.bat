::Check for Logged in Users
qwinsta | findstr Active
IF %ERRORLEVEL%==0 GOTO Active

::Check for Open Documents
tasklist | findstr /i "winword excel powerpnt outlook iexplore chrome AcroRd32"
IF %ERRORLEVEL%==0 GOTO OpenFiles

::LogOff Session
Logoff 1
Logoff 2
EXIT



:Active
EXIT

:OpenFiles
EXIT
