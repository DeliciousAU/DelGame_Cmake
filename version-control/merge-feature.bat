@echo off
cd /d %~dp0\..

set /p FEATURE=Enter feature name to merge (e.g. player-movement): 
set BRANCH=feature/%FEATURE%

git checkout main
git pull
git merge %BRANCH%

echo 🔁 Merged %BRANCH% into main

set /p DELETE=Delete branch %BRANCH%? (Y/N): 
if /I "%DELETE%"=="Y" git branch -d %BRANCH%

pause
