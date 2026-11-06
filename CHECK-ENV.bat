@echo off
setlocal
cd /d "%~dp0"
set "PYTHONHOME="
set "PYTHONPATH="
"%~dp0runtime\python\python.exe" -X utf8 -u "%~dp0portable.py" check
set "Strata_EXIT_CODE=%ERRORLEVEL%"
if not "%Strata_EXIT_CODE%"=="0" "%~dp0runtime\python\python.exe" -X utf8 -u "%~dp0tools\runtime_diagnostics.py"
pause
exit /b %Strata_EXIT_CODE%
