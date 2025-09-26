@echo off
color 0f
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

if not exist "890\" (
    echo A pasta '890' nao foi encontrada.
    echo Certifique-se de que a pasta existe e esta vazia.
    echo.
    pause >nul
    goto MENU_PRINCIPAL
)

for %%f in ("890\*.*") do (
    start "" "%%f"
)

echo.
echo Todos os programas foram iniciados.
echo.
pause >nul
goto MENU_PRINCIPAL

:SAIR
cls
echo.
echo Obrigado por usar o WINGOFE.
timeout /t 2 >nul
exit
