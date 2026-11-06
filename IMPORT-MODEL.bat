@echo off
setlocal
cd /d "%~dp0"
set "PYTHONHOME="
set "PYTHONPATH="
"%~dp0runtime\python\python.exe" -X utf8 -u "%~dp0portable.py" import %*
set "Strata_EXIT_CODE=%ERRORLEVEL%"
pause
exit /b %Strata_EXIT_CODE%
