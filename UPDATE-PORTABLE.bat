@echo off
setlocal
title Strata - Update
set "Strata_UPDATE_APP=%~dp0."
set "Strata_UPDATE_OPTIONS=%*"
:pick_worker
set "Strata_UPDATE_WORKER=%TEMP%\Strata-update-worker-%RANDOM%-%RANDOM%.cmd"
if exist "%Strata_UPDATE_WORKER%" goto pick_worker
copy "%~dp0tools\update_worker.cmd" "%Strata_UPDATE_WORKER%" >nul
if errorlevel 1 goto failed
rem Chain without CALL: the active batch file becomes this temporary worker.
"%Strata_UPDATE_WORKER%"
:failed
echo Could not prepare the temporary update worker.
pause
exit /b 1
