@echo off
title Optimizer by Gui
color 0a
mode con: cols=120 lines=35

:menu
cls
echo.
rem ====== ASCII "OPTIMIZER" ======
echo(
echo(
echo(
echo(
echo(
echo(
echo(
echo(
echo(
echo(
echo(
echo.
echo(                     by Gui
echo.
echo ========================= MENU =========================
echo.
echo   [1] Otimizar GPU
echo   [2] Otimizar CPU
echo   [3] Otimizar Tudo
echo   [4] Sair
echo.
set /p "opcao="Digite o numero da opcao e aperte ENTER: "
if "%opcao%"=="1" goto otimizar_gpu
if "%opcao%"=="2" goto otimizar_cpu
if "%opcao%"=="3" goto otimizar_tudo
if "%opcao%"=="4" goto sair
echo Opcao Invalida!
pause
goto menu

if errorlevel 4 goto sair
if errorlevel 3 goto otimizar_tudo
if errorlevel 2 goto otimizar_cpu
if errorlevel 1 goto otimizar_gpu

:otimizar_gpu
cls
echo Otimizando GPU...
:: comandos aqui
pause
goto menu

:otimizar_cpu
cls
echo Otimizando CPU...
:: comandos aqui
pause
goto menu

:otimizar_tudo
cls
echo Otimizando CPU e GPU...
:: comandos aqui
echo Comecando em 5 segundos

timeout /t 5 /nobreak >nul

echo
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BITS" /v "Start" /t REG_DWORD /d "4" /f >nul
echo .
echo
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BTAGService" /v "Start" /t REG_DWORD /d "4" /f >nul
echo .
echo
reg add "HKLM\SYSTEM\CurrentControlSet\Services\bthserv" /v "Start" /t REG_DWORD /d "4" /f >nul
echo .
echo
reg add "HKLM\SYSTEM\CurrentControlSet\Services\lfsvc" /v "Start" /t REG_DWORD /d "4" /f >nul
echo .
echo
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DiagTrack" /v "Start" /t REG_DWORD /d "4" /f >nul
echo .
echo
reg add "HKLM\SYSTEM\CurrentControlSet\Services\HvHost" /v "Start" /t REG_DWORD /d "4" /f >nul

reg add "HKLM\SYSTEM\CurrentControlSet\Services\vmickvpexchange" /v "Start" /t REG_DWORD /d "4" /f >nul

reg add "HKLM\SYSTEM\CurrentControlSet\Services\vmicguestinterface" /v "Start" /t REG_DWORD /d "4" /f >nul

reg add "HKLM\SYSTEM\CurrentControlSet\Services\vmicshutdown" /v "Start" /t REG_DWORD /d "4" /f >nul

reg add "HKLM\SYSTEM\CurrentControlSet\Services\vmiccheartbeat" /v "Start" /t REG_DWORD /d "4" /f >nul

reg add "HKLM\SYSTEM\CurrentControlSet\Services\vmicvmsession" /v "Start" /t REG_DWORD /d "4" /f >nul

reg add "HKLM\SYSTEM\CurrentControlSet\Services\vmicrdv" /v "Start" /t REG_DWORD /d "4" /f >nul

reg add "HKLM\SYSTEM\CurrentControlSet\Services\vmictimesync" /v "Start" /t REG_DWORD /d "4" /f >nul

reg add "HKLM\SYSTEM\CurrentControlSet\Services\vmicvss" /v "Start" /t REG_DWORD /d "4" /f >nul
echo .
echo
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PhoneSvc" /v "Start" /t REG_DWORD /d "4" /f >nul
echo .
echo
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Spooler" /v "Start" /t REG_DWORD /d "4" /f >nul
echo .
echo
reg add "HKLM\SYSTEM\CurrentControlSet\Services\QWAVE" /v "Start" /t REG_DWORD /d "4" /f >nul
echo .
echo
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Sysmain" /v "Start" /t REG_DWORD /d "4" /f >nul
echo .
echo
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WSearch" /v "Start" /t REG_DWORD /d "4" /f >nul
echo .
echo .
echo .
echo .
echo .
echo .
echo Otimizacao Completa!
pause
goto menu

:sair
cls
echo Saindo...
timeout /t 1 >nul
exit
