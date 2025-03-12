@echo off
echo ============================================
echo Carregando variaveis do arquivo .env...
echo ============================================

for /f "tokens=1,* delims==" %%A in (%~dp0docker\.env) do (
    set %%A=%%B
)

echo ============================================
echo Gerando dump do MySQL Docker...
echo ============================================

docker exec mysql_local mysqldump -u%MYSQL_USER% -p%MYSQL_PASSWORD% %MYSQL_DATABASE% > "%~dp0docker\initdb\dump.sql"

echo Dump gerado com sucesso!
pause
