@echo off
REM echo =============================================
REM echo Inicializando ambiente Docker MySQL...
REM echo =============================================
REM cd /d "%~dp0docker"
REM docker-compose up -d

REM echo Aguarde alguns segundos enquanto o MySQL inicializa...
REM timeout /t 10

echo =============================================
echo Inicializando o Backend Strapi...
echo =============================================
start cmd /k "cd /d "%~dp0backend/nodeJs" && npm run develop"

echo =============================================
echo Inicializando Frontend Angular...
echo =============================================
start cmd /k "cd /d "%~dp0frontend/angular" && npm start"

echo =============================================
echo Ambiente inicializado com sucesso!
echo =============================================
pause
