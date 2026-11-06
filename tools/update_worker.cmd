@echo off
powershell -NoProfile -ExecutionPolicy Bypass -File "%Strata_UPDATE_APP%\tools\run_portable_update.ps1" -AppRoot "%Strata_UPDATE_APP%"
set "Strata_WORKER_RC=%ERRORLEVEL%"
if not "%Strata_WORKER_RC%"=="0" goto failed
exit /b 0
:failed
pause
exit /b %Strata_WORKER_RC%
