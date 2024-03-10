echo off

cls
color 09
title Base Leley Store V1

:menu
echo  ==========================================
echo  =      escolha uma opcao                 =
echo  =   (1) START + LIMPAR CACHE             =
echo  =   (2) START                            =
echo  =   (3) LIMPAR CACHE                     =
echo  =   (0) PARA FECHAR CONSOLE              =
echo  ==========================================

set /p Comando= ESCOLHA UMA  OPCAO: 
if "%Comando%" equ "1" (goto:op1)
if "%Comando%" equ "2" (goto:op2)
if "%Comando%" equ "3" (goto:op3)
if "%Comando%" equ "0" (goto:exit)

echo.
:op1
echo Aguarde alguns segundos para de que o cache seja excluido.
rd /s /q "cache"
echo LIMPAZA COMCLUIDA
cls
start ..\Artifacts\FXServer.exe +exec server.cfg
exit
:op2

start ..\Artifacts\FXServer.exe +exec server.cfg
timeout 3
exit

:op3
echo Aguarde alguns segundos para de que o cache seja excluido.
rd /s /q "cache"
echo LIMPAZA COMCLUIDA
timeout 3
cls
goto menu