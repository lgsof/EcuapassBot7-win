@echo off
chcp 850 > nul

:: Add embedded :mingit to PATH
set PATH=%~dp0mingit/cmd;%PATH%

echo ========================================================
echo +++ Quitando previos Commander y GUI
taskkill /IM "ecuapass_commander.exe" /F 2>nul 
taskkill /FI "WINDOWTITLE eq EcuapassBot" /F

echo ====== Verificando disponibilidad de Git =======================
git --version >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    set "GIT_CMD=git"
) else (
    set "GIT_CMD=%~dp0..\mingit\cmd\git.exe"
)

echo ====== Verificando si existe repositorio Git ===================
if not exist ".git" (
    echo ERROR: Carpeta .git no encontrada. Se omite la actualización.
    goto ejecutar_app
)

echo ====== Evitar actualizacio del commander =======================
git update-index --skip-worktree ecuapass_commander\ecuapass_commander.exe


echo ====== Buscando actualizaciones ================================
git fetch origin main
if errorlevel 1 (
    echo ADVERTENCIA: Falló git fetch. Se omite la actualización.
    goto ejecutar_app
)

echo ====== Archivos que se actualizan ==============================
git --no-pager diff --name-status HEAD origin/main

echo ====== Aplicando actualizaciones ===============================
git reset --hard origin/main
if errorlevel 1 (
    echo ADVERTENCIA: Falló git reset. Continuando con los archivos actuales.
)

echo ====== Parchando Commander =====================================
call patches\ebotpatch-update-exe-win.bat

:ejecutar_app
echo ======= Ejecutando EcuapassBot =================================
set JAVA=javaw
if "%~1"=="debug" (
    set JAVA=java
)

start bin\jre-1.8\bin\%JAVA% -jar "bin\EcuapassBotGUI.jar"

