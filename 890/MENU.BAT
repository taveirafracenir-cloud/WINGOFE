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
echo 1. Listar arquivos
echo 2. Abrir um programa de teste
echo 3. Ver a hora
echo 4. Sair do WINGOFE
echo.
echo =================================
echo.
set /p escolha="Escolha uma opcao: "

if "%escolha%"=="1" goto LISTAR
if "%escolha%"=="2" goto TESTE
if "%escolha%"=="3" goto HORA
if "%escolha%"=="4" goto SAIR

echo.
echo Opcao invalida.
pause >nul
goto MENU_INTERNO

:LISTAR
cls
echo.
echo Conteudo da pasta 890:
echo.
dir /b
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

:HORA
cls
call hora.bat
goto MENU_INTERNO

:SAIR
cls
echo.
echo Desligando o sistema...
timeout /t 2 >nul
exit
