
@echo off

REM Kill server if it still is running
taskkill /IM "ecuapass_commander.exe" /F 2>nul 
taskkill /FI "WINDOWTITLE eq EcuapassBot" /F

echo ========================================================
echo +++ Descargando Actualizaciones EcuapassBot...
echo ========================================================
REM Prevent Git from overwriting the patched executable
git update-index --assume-unchanged ecuapass_commander\ecuapass_commander.exe

echo +++ Checking for updates...
git fetch origin main

echo +++ Files to be updated:
git --no-pager diff --name-status HEAD origin/main

echo +++ Applying updates...
git reset --hard origin/main

REM REM Fetch and update repository while keeping user changes
REM REM git fetch origin main  && ^
REM REM git reset --keep origin/main && ^
REM REM git pull origin main

echo ========================================================
echo +++ Actualizando commander...
echo ========================================================
call patches\ebotpatch-update-exe-win.bat

echo ========================================================
echo +++ Ejecutando EcuapassBot...
echo ========================================================
set JAVA=javaw
if "%~1"=="debug" (
    set JAVA=java
)
start bin\jre-1.8\bin\%JAVA% -jar "bin\EcuapassBotGUI.jar"
