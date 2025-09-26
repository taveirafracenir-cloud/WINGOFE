@echo off
color 0f

if not exist "890" (
    echo A pasta '890' nao foi encontrada.
    echo O sistema WINGOFE nao pode ser iniciado.
    pause >nul
    exit
)

:MENU_PRINCIPAL
cls
echo.
echo =================================
echo.
echo          W I N G O F E
echo.
echo =================================
echo.
echo Digite 'iniciar' para comecar.
echo Digite 'sair' para fechar.
echo.
set /p comando="WINGOFE > "

if /i "%comando%"=="iniciar" goto INICIAR_PROGRAMAS
if /i "%comando%"=="sair" goto SAIR

echo.
echo Comando '%comando%' nao reconhecido.
pause >nul
goto MENU_PRINCIPAL

:INICIAR_PROGRAMAS
cls
echo.
echo Iniciando programas da pasta 890...
echo.

rem Executa o arquivo principal dentro da pasta 890
if exist "890\menu.bat" (
    call "890\menu.bat"
) else (
    echo O arquivo 'menu.bat' nao foi encontrado em '890'.
    echo.
    pause >nul
)
goto MENU_PRINCIPAL

:SAIR
cls
echo.
echo Obrigado por usar o WINGOFE.
timeout /t 2 >nul
exit
