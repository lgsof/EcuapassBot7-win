@echo off
chcp 850 > nul

:: Add embedded :mingit to PATH
set PATH=%~dp0mingit/cmd;%PATH%

echo ==== Quitando previos Commander y GUI ==================
taskkill /IM "ecuapass_commander.exe" /F 2>nul 
taskkill /FI "WINDOWTITLE eq EcuapassBot" /F

echo ==== Buscando release en git ==================
setlocal EnableDelayedExpansion

for /f "delims=" %%L in ('
  curl -s -H "User-Agent: batch" "https://api.github.com/repos/lgsof/EcuapassBot7-win/tags"
') do (
  set "JSON=%%L"
  goto :parse
)

:parse
REM Buscar el valor entre "name":" y la siguiente comilla
for %%A in (!JSON!) do (
  set "PART=%%A"
  REM Buscar el prefijo "name":" y extraer el siguiente token
  for /f "tokens=2 delims=:" %%B in ("!PART!") do (
    set "TAG_TMP=%%B" & set "TAG_TMP=!TAG_TMP:,=!" & set "TAG_TMP=!TAG_TMP:"=!"
    set "LATEST_TAG=!TAG_TMP!"
    goto :done
  )
)
:done

echo ==== Leyendo VERSION.txt ========================
if not exist VERSION.txt (
    echo ERROR: Archivo VERSION.txt no encontrado.
    goto ejecutar_actualizacion
)
set /p "LOCAL_TAG=" < VERSION.txt

echo --------------------------------------------------------
echo Version remota : !LATEST_TAG!
echo Version local  : !LOCAL_TAG!
echo --------------------------------------------------------

:: === Comparar versiones
if "!LATEST_TAG!"=="!LOCAL_TAG!" (
    echo +++ Version local ya estaba actualizada.
    goto ejecutar_app
)

:ejecutar_actualizacion

echo ====== Verificando disponibilidad de Git =======================
git --version >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    set "GIT_CMD=git"
) else (
    set "GIT_CMD=%~dp0..\mingit\cmd\git.exe"
)

echo ====== Verificando si existe repositorio Git ===================
if not exist ".git" (
    echo ERROR: Carpeta .git no encontrada. Se omite la actualizacion.
    goto ejecutar_app
)

echo ====== Evitando que se actualize el commander =======================
git update-index --skip-worktree ecuapass_commander\ecuapass_commander.exe

echo ====== Buscando actualizaciones ================================
git fetch origin main
if %ERRORLEVEL% EQU 1 (
    echo ADVERTENCIA: Fallo en git fetch. Se omite la actualizacion.
    goto ejecutar_app
)

echo ====== Archivos que se actualizan ==============================
git --no-pager diff --name-status HEAD origin/main

echo ====== Aplicando actualizaciones ===============================
git reset --hard origin/main
if %ERRORLEVEL% EQU 1 (
    echo ADVERTENCIA: Fallo en git reset. Continuando con los archivos actuales.
)

echo ====== Parchando Commander =====================================
call patches\ebotpatch-update-exe-win.bat

echo ====== Actualizando VERSION.txt ================================
echo !LATEST_TAG!>VERSION.txt

:ejecutar_app
echo ======= Ejecutando EcuapassBot =================================
set JAVA=javaw
if "%~1"=="debug" (
    set JAVA=java
)

start bin\jre-1.8\bin\%JAVA% -jar "bin\EcuapassBotGUI.jar"

