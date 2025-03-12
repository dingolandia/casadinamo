@echo off
echo =============================================
echo Inicializando ambiente Docker MySQL...
echo =============================================
cd /d "%~dp0docker"
docker-compose up -d

echo Aguarde alguns segundos enquanto o MySQL inicializa...
timeout /t 10

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
