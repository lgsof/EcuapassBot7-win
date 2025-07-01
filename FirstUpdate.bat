@echo off
setlocal

:: 1) Add MinGit to PATH
set "PATH=%~dp0mingit\cmd;%PATH%"

:: 2) First run: init + fetch + hard-reset
if not exist "%~dp0.git" (
    echo Inicializando repositorio Git...
    git init
    git remote add origin https://github.com/lgsof/EcuapassBot7-win.git
    echo Descargando y aplicando version inicial...
    git fetch origin main
    git reset --hard origin/main
)

:: 3) Protect all mingit files from future updates
echo Ignorando futuras actualizaciones de mingit...
for /f "delims=" %%F in ('git ls-files "mingit/*"') do (
    git update-index --skip-worktree "%%F"
)

:: 4) Always pull latest for everything else
echo Actualizando aplicacion...
git fetch origin main
git reset --hard origin/main

endlocal

