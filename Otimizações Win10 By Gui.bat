@echo off
chcp 65001
title Otimizador Windows 10 by Gui
color 0a
mode con: cols=90 lines=30

:menu
cls
echo .
echo   ####  #####  #   ###   ###   #  #####    ####   #####    ####   ####
echo  #    #   #    #  ##  # #  ##  #     #    #    #  #    #  #    #  #   #
echo  #    #   #    #  #   ##    #  #    #     ######  #    #  #    #  ####
echo   ####    #    #  #   ##    #  #   #####  #    #  #####    ####   #   #
echo                                                                          (By Gui)
echo =====================================================
echo         Otimizacoes do Windows 10 - By Gui
echo =====================================================
echo [1] Desempenho
echo [2] Privacidade
echo [3] Servicos
echo [4] Tarefas
echo [5] Avancado
echo [6] Sair
echo =====================================================
set /p op=Escolha uma opcao:

if "%op%"=="1" goto desempenho
if "%op%"=="2" goto privacidade
if "%op%"=="3" goto servicos
if "%op%"=="4" goto tarefas
if "%op%"=="5" goto avancado
if "%op%"=="6" goto exit
goto menu

:: ================================
:desempenho
cls
echo === OTIMIZACOES DE DESEMPENHO ===
echo Aplicando Ajustes de desempenho...
:: Comandos
fsutil.exe behavior set disableLastAccess 1
fsutil.exe 8dot3name set 1
pause
goto menu

:: ================================
:privacidade
cls
echo === OTIMIZACOES DE PRIVACIDADE ===
:: Comandos
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v PreventDeviceMetadataFromNetwork /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d 1 /f
REG ADD HKLM\Software\Microsoft\SQMClient\Windows /v CEIPEnable /d 0 /t REG_DWORD /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\SQMLogger" /v "Start" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t REG_SZ /d Off /f

pause
goto menu


reg add "HKLM\SYSTEM\CurrentControlSet\Services\BTAGService" /v "Start" /t REG_DWORD /d "4" /f
echo .
echo
reg add "HKLM\SYSTEM\CurrentControlSet\Services\bthserv" /v "Start" /t REG_DWORD /d "4" /f
echo .
echo
reg add "HKLM\SYSTEM\CurrentControlSet\Services\lfsvc" /v "Start" /t REG_DWORD /d "4" /f
echo .
echo
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DiagTrack" /v "Start" /t REG_DWORD /d "4" /f
echo .
echo
reg add "HKLM\SYSTEM\CurrentControlSet\Services\HvHost" /v "Start" /t REG_DWORD /d "4" /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\vmickvpexchange" /v "Start" /t REG_DWORD /d "4" /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\vmicguestinterface" /v "Start" /t REG_DWORD /d "4" /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\vmicshutdown" /v "Start" /t REG_DWORD /d "4" /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\vmiccheartbeat" /v "Start" /t REG_DWORD /d "4" /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\vmicvmsession" /v "Start" /t REG_DWORD /d "4" /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\vmicrdv" /v "Start" /t REG_DWORD /d "4" /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\vmictimesync" /v "Start" /t REG_DWORD /d "4" /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\vmicvss" /v "Start" /t REG_DWORD /d "4" /f
echo .
echo
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PhoneSvc" /v "Start" /t REG_DWORD /d "4" /f
echo .
echo
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Spooler" /v "Start" /t REG_DWORD /d "4" /f
echo .
echo
reg add "HKLM\SYSTEM\CurrentControlSet\Services\QWAVE" /v "Start" /t REG_DWORD /d "4" /f
echo .
echo
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Sysmain" /v "Start" /t REG_DWORD /d "4" /f
echo .
echo a
pause
::Arrumar erro.
set /p opcao="Digite o numero"
if "%opcao%"=="1" reg add "HKLM\SYSTEM\CurrentControlSet\Services\WSearch" /v "Start" /t REG_DWORD /d "4" /f
if "%opcao%"=="2" reg add "HKLM\SYSTEM\CurrentControlSet\Services\WSearch" /v "Start" /t REG_DWORD /d "2" /f
pause
echo.
echo
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WSearch" /v "Start" /t REG_DWORD /d "4" /f
echo .
echo
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DriverSearching" /v "SearchOrderConfig" /t REG_DWORD /d "0" /f
echo .
echo
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberBootEnabled" /t REG_DWORD /d "0" /f
echo .
echo
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f
echo .
echo
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
echo .
echo
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explore\Serialize" /v "StartupDelayInMSec" /t REG_DWORD /d "0" /f
echo .
echo
reg add "HKCU\Control Panel\Mouse" /v "MouseHoverTime" /t REG_SZ /d 10 /f
echo .
echo
reg add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d 0 /f
echo.
echo
:: COLOCAR OQUE CADA COISA FAZ, QUANDO EU NÃO ESTIVER COM PREGUIÇA :)
sc config DiagTrack start= disabled
sc config diagnostichub.standardcollector.service start= disabled
sc config dmwappushservice start= disabled
sc config RemoteRegistry start= disabled
sc config TrkWks start= disabled
sc config WMPNetworkSvc start= disabled
sc config HomeGroupListener start= disabled
sc config HomeGroupProvider start= disabled
sc config lfsvc start= disabled
sc config MapsBroker start= disabled
sc config MapsBroke start= disabled
sc config NetTcpPortSharing start= disabled
sc config SharedAcess start= disabled
sc config WbioSrvc start= disabled
sc config wisvc start= disabled
sc config SmsRouter start= disabled
sc config PhoneSvc start= disabled
sc config RetailDemo start= disabled
sc config SharedRealitySvc start= disabled
sc config perceptionsimulation start= disabled
sc config BTAGService start= disabled
sc config BthAvctpSvc start= disabled
sc config AJRouter start= disabled
sc config CDPSvc start= disabled
sc config ShellHWDetection start= disabled
sc config DusmSvc start= disabled
sc config NvTelemetryContainer start=disabled
sc config ICEsoundService start= disabled
sc config RtkAudioUniversalService start= disabled
sc config RstMwService start= disabled
sc config DoSvc start= disabled
sc config ClickToRunSvc start= disabled
sc config BDESVC start= disabled
:: Tweaks de tarefa agendada

schtasks /Change /TN "Microsoft\Windows\AppID\SmartScreenSpecific" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Uploader" /Disable
schtasks /Change /TN "Microsoft\Windows\Maintenance\WinSAT" /Disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyUpload" /Disable
schtasks /Change /TN "Microsoft\Office\Office Automatic Updates 2.0" /Disable
schtasks /Change /TN "Microsoft\Office\Office ClickToRun Service Monitor" /Disable
schtasks /Change /TN "Microsoft\Office\Office Feature Updates" /Disable
schtasks /Change /TN "Microsoft\Office\Office Feature Updates Logon" /Disable
schtasks /Change /TN "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /Disable
schtasks /Change /TN "MicrosoftEdgeUpdateTaskMachineCore" /Disable
schtasks /Change /TN "MicrosoftEdgeUpdateTaskMachineUA" /Disable
schtasks /Change /TN "Microsoft\Windows\FileHistory\File History (maintenance mode)" /Disable
schtasks /Change /TN "Microsoft\Windows\PI\Sqm-Tasks" /Disable


:: Telemetria e coleta de Dados







reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "SmartScreenEnabled" /t REG_SZ /d "Off" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" /v "FallowFullControl" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\CurrentVersion\AdvertisingInfo\" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\WindowCurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\International\User Pofiles" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowWiFiH"
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots" /v "value" /t REG_DWORD /d "0" /f






:sair
cls
echo Saindo...
timeout /t 1
exit
