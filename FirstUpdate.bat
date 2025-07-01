@echo off
setlocal

REM 1) Add MinGit to PATH
set "PATH=%~dp0mingit\cmd;%PATH%"

REM 2) First run: init + fetch + mixed reset to populate index only
if not exist "%~dp0.git" (
    echo [First run] Initializing Git repository...
    git init
    git remote add origin https://github.com/lgsof/EcuapassBot7-wintest.git

    echo [First run] Fetching origin/main...
    git fetch origin main

    echo [First run] Populating index (mixed reset)...
    git reset --mixed origin/main

    echo [First run] Marking mingit files as skip-worktree...
    for /f "delims=" %%F in ('git ls-files mingit') do (
        git update-index --skip-worktree "%%F"
    )
)

REM 3) Every run: fetch & hard reset (mingit/* will be skipped)
echo Updating application...
git fetch origin main
git reset --hard origin/main

endlocal

