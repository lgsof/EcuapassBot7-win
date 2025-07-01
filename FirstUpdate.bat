:: Add mingit to PATH
set PATH=%~dp0mingit/cmd

:: Initialize git repo and fetch latest release
git init
git remote add origin https://github.com/lgarreta/EcuapassBot7-wintest.git
git fetch origin main
git reset --hard origin/main
