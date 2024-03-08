@echo off

setlocal enabledelayedexpansion

set /p commitMessage="Enter your commit message: "

REM Add changes to the staging area
git add .

REM Commit the changes
git commit -m "!commitMessage!"

REM Push changes to the remote repository (assuming the branch is 'master')
git push origin master

echo Changes committed and pushed to GitHub.

pause
