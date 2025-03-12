@echo off

start cmd /k "cd /d "%~dp0frontend/angular" && npm start"
start cmd /k "cd /d "%~dp0backend/nodeJs" && npm run develop"