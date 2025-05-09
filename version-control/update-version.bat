@echo off
cd /d %~dp0\..

set /p VERSION=Enter new version number (e.g. v0.2.0): 
echo %VERSION% > version.txt

git add version.txt
git commit -m "Update version to %VERSION%"
git push

echo ✅ Version updated to %VERSION% and pushed.
pause
