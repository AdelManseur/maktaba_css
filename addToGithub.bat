@echo off

setlocal enabledelayedexpansion

set /p fileToAdd=<C:/Users/Lenovo/OneDrive/Maktaba_SCSS/latestFile.txt

set GitHubUsername=AdelManseur
set GitHubRepo=maktaba_css
set FilePath=%fileToAdd%
set CommitMessage=Add Your File

REM Add the file to the local repository
git add "%FilePath%"

REM Commit the changes
git commit -m "%CommitMessage%"

REM Push the changes to the GitHub repository
git push origin master

echo File added and changes pushed to GitHub.

pause
