@echo off
cls
echo =================================
echo.
echo    A D W - Aplicativo do WINGOFE
echo.
echo =================================
echo.
echo Este programa cria um novo aplicativo ADW para o WINGOFE.
echo.
set /p app_name="Qual o nome do novo aplicativo? "
if "%app_name%"=="" (
    echo O nome nao pode ser vazio.
    pause >nul
    exit
)

if exist "%app_name%" (
    echo Um aplicativo com esse nome ja existe.
    pause >nul
    exit
)

rem Cria a pasta que representa o aplicativo ADW
mkdir "%app_name%.ADW"

rem Cria o arquivo de configuracao OULR.JSON dentro da pasta
echo { > "%app_name%.ADW\OULR.JSON"
echo   "nome": "%app_name%", >> "%app_name%.ADW\OULR.JSON"
echo   "criado_por": "WINGOFE ADW" >> "%app_name%.ADW\OULR.JSON"
echo } >> "%app_name%.ADW\OULR.JSON"

rem Cria o arquivo BNM que contem o codigo do aplicativo
echo BRM > "%app_name%.ADW\%app_name%.BNM"
echo. >> "%app_name%.ADW\%app_name%.BNM"
echo Este eh o codigo do seu aplicativo. >> "%app_name%.ADW\%app_name%.BNM"

echo.
echo Aplicativo "%app_name%.ADW" criado com sucesso!
pause >nul
exit
