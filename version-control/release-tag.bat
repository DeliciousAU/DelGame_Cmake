@echo off
cd /d %~dp0\..

REM Read version from version.txt
set /p TAG=<version.txt

REM Ask for message
set /p MSG=Enter tag message (optional): 

git tag -a %TAG% -m "%MSG%"
git push origin %TAG%

echo ✅ Tag %TAG% created and pushed to GitHub!
pause
