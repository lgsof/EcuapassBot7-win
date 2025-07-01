@echo off
setlocal

:: 1) Find a usable git: prefer system, else use sibling mingit\cmd\git.exe
git --version >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    set "GIT_CMD=git"
) else (
    set "GIT_CMD=%~dp0..\mingit\cmd\git.exe"
)

:: 2) Work in the app folder
pushd "%~dp0"

:: 3) First-time init
if not exist ".git" (
    echo Inicializando repositorio Git...
    "%GIT_CMD%" init
    "%GIT_CMD%" remote add origin https://github.com/lgsof/EcuapassBot7-win.git
)

:: 4) Always pull the latest
echo Actualizando la aplicacion...
"%GIT_CMD%" fetch origin main
"%GIT_CMD%" reset --hard origin/main

popd
endlocal

