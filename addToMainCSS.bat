@echo off
setlocal enabledelayedexpansion

set /p latestFILE=<latestFile.txt

REM Save the latest file name to a file
    echo @import url('%latestFILE%'); >> main.css
    echo File saved successfully.


echo Press 'a' to execute the Gulp command.
choice /c a /n /t 10 /d a /m "Press 'a' within 10 seconds to continue..."

if errorlevel 1 goto addToGithub

:addToGithub
./addToGithub.bat


pause