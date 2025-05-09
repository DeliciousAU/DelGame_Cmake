@echo off
cd /d %~dp0

:: Git commit & push
git add .
set TIMESTAMP=%DATE% %TIME%
git commit -m "Auto-commit at %TIMESTAMP%"
git push origin main

:: Run Python script from version-control folder
python version-control\summarize_diff.py

pause
