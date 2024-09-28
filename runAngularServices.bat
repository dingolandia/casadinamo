@echo off

start cmd /k "cd /d "%~dp0angular-frontend" && npm start"
start cmd /k "cd /d "%~dp0backend" && npm run develop"