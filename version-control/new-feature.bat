@echo off
cd /d %~dp0\..

set /p FEATURE=Enter feature name (e.g. player-movement): 
set BRANCH=feature/%FEATURE%

git checkout -b %BRANCH%
echo ✅ Now working on branch: %BRANCH%
pause
