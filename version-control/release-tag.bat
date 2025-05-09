@echo off
cd /d %~dp0\..

set /p TAG=Enter version tag (e.g. v0.2): 
set /p MSG=Enter tag message (optional): 

git tag -a %TAG% -m "%MSG%"
git push origin %TAG%

echo ✅ Tag %TAG% created and pushed to GitHub!
pause
