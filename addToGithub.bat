@echo off

setlocal enabledelayedexpansion

set GitHubUsername=AdelManseur
set GitHubRepo=maktaba_css
set FilePath=C:/Users/Lenovo/OneDrive/Maktaba_CSS/adel.css
set CommitMessage=Add Your File

REM Add the file to the local repository
git add "%FilePath%"

REM Commit the changes
git commit -m "%CommitMessage%"

REM Push the changes to the GitHub repository
git push origin master

echo File added and changes pushed to GitHub.

pause
