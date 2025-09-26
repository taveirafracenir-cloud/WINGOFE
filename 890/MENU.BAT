@echo off
color 0f

:MENU_INTERNO
cls
echo.
echo =================================
echo.
echo          W I N G O F E
echo          MENU PRINCIPAL
echo.
echo =================================
echo.
echo 1. Listar aplicativos
echo 2. Abrir um programa de teste
echo 3. Sair do WINGOFE
echo.
echo =================================
echo.
set /p escolha="Escolha uma opcao: "

if "%escolha%"=="1" goto LISTAR_APLICATIVOS
if "%escolha%"=="2" goto TESTE
if "%escolha%"=="3" goto SAIR

echo.
echo Opcao invalida.
pause >nul
goto MENU_INTERNO

:LISTAR_APLICATIVOS
cls
echo.
echo Aplicativos instalados:
echo.
dir /b *.ADW
echo.
pause >nul
goto MENU_INTERNO

:TESTE
cls
echo.
echo Iniciando programa de teste...
echo.
echo Este e um programa de teste.
echo.
pause >nul
goto MENU_INTERNO

:SAIR
cls
echo.
echo Desligando o sistema...
timeout /t 2 >nul
exit
