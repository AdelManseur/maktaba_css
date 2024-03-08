@echo off
setlocal enabledelayedexpansion

REM Get the latest file in the current directory
set "latestFile="
set "latestTimestamp=0"

for %%F in (*) do (
    set "file=%%F"
    
    REM Get the last modified timestamp of the file
    for /f "tokens=1-3 delims= " %%a in ('dir /TW /OD "%%F" ^| findstr "^[0-9]"') do (
        set "timestamp=%%a"
        set "time=%%b"
        set "ampm=%%c"
        
        REM Convert the timestamp to a sortable format
        set "sortableTimestamp=!timestamp!!time!"
        set "sortableTimestamp=!sortableTimestamp: =0!"
        
        REM Compare timestamps to find the latest file
        if !sortableTimestamp! gtr !latestTimestamp! (
            set "latestTimestamp=!sortableTimestamp!"
            set "latestFile=!file!"
        )
    )
)

REM Save the latest file name to a file

    echo @import url('%latestFile%'); >> main.css
    echo File saved successfully.


echo Press 'a' to execute the Gulp command.
choice /c a /n /t 10 /d a /m "Press 'a' within 10 seconds to continue..."

if errorlevel 1 goto addToGithub

:addToGithub
./addToGithub.bat


pause
