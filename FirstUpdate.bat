@echo off
setlocal

:: 1) Put your bundled MinGit on the PATH
set "PATH=%~dp0mingit\cmd;%PATH%"

:: 2) Check for first run
if not exist "%~dp0.git" goto :FirstRun
goto :DoUpdate

:FirstRun
echo [First run] Initializing Git repository...
git init
git remote add origin https://github.com/lgsof/EcuapassBot7-win.git
echo [First run] Fetching origin/main...
git fetch origin main
git reset --hard origin/main

:DoUpdate
echo Protecting mingit/ from updates...
for /f "delims=" %%F in ('git ls-files mingit') do git update-index --skip-worktree "%%F"

echo Updating application...
git fetch origin main
git reset --hard origin/main

endlocal
exit /b

