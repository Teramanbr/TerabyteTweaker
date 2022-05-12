@Echo Off
@Title Terabyte Tweaker
SetLocal EnableDelayedExpansion
mkdir C:\TT\ >nul 2>&1

::This code was first created by a 12 year old brazilian, which did all of this alone, so if the code is actual garbage,
::he apologises, for he is just a child who likes computers and has poor programming skills.

ping -n 2 -w 700 google.com >nul 2>&1
IF %ERRORLEVEL% EQU 1 (
    chcp 437 >nul 2>&1
    color 4
    FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
    IF [%%G] EQU [1046] (
      goto SemNet
    ) ELSE (
      goto NoNet
    )
    )
) ELSE (
    chcp 437 >nul 2>&1
    color 6
    FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
    IF [%%G] EQU [1046] (
      goto br
    ) ELSE (
      goto en
    )
    )
)

:SemNet
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.    
echo.          
echo.    
echo.     
echo.   
echo. 
echo.
echo                              Você aparenta estar sem internet, tente novamente mais tarde.
echo.                   
echo.                  
echo.                 
echo.                      
echo.      
echo. 
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
    pause & exit

:br

chcp 65001 >nul 2>&1
net session >nul 2>&1
if %errorLevel% == 0 (
    cls
) else (
color 4
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.    
echo.          
echo.    
echo.     
echo.   
echo. 
echo.
echo                                 acho que ALGUÉM esqueceu de abrir o app como Administrador...
echo.                   
echo.                  
echo.                 
echo.                      
echo.      
echo. 
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
    pause & exit
)
cd %systemroot%\system32
cls
echo.
echo.
echo.
echo ########################################################################################################################
echo                                                    Terabyte Tweaker                                          
echo ########################################################################################################################
echo              ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄                               ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
echo             ▄████████████████████████████████                             ▄████████████████████████████████         
echo            ▐█████████████████████████████████▌                           ▐█████████████████████████████████▌
echo            ███████████████████████████████████▄                          ███████████████████████████████████▌
echo           ▀▀▀▀▀▀▀▀▀▀▀▀▀▀█████████▀▀▀▀▀▀▀▀▀▀▀▀▀▀                         ▀▀▀▀▀▀▀▀▀▀▀▀▀▀█████████▀▀▀▀▀▀▀▀▀▀▀▀▀▀
echo                        █████████▌                                                    █████████▌
echo                       ██████████                                                    ██████████
echo                      ██████████                                                    ▄█████████ 
echo                     ▄████████████████████▀                                        ▐████████████████████▀
echo                     ███████████████████▀                                          ████████████████████
echo                    ███████████████████                                           ███████████████████▀
echo                              ███████▀                                                      ███████▀
echo                             ▐██████                                                        ██████
echo                             █████▀                                                        █████▀
echo                            ▐███▀                                                          ███▀
echo                            ███                                                           ███
echo                            █▀                                                            █▀   
echo ########################################################################################################################
echo                                                  Por Teraman_br#5060                                         
echo ########################################################################################################################
echo.
echo.
echo.
SET /P choice=Deseja ativar os Tweaks e melhorar a Performance do PC? S/N?:
IF /I "%choice%"=="S" Goto runbr
IF /I "%choice%"=="s" Goto runbr
IF /I "%choice%"=="Sim" Goto runbr
IF /I "%choice%"=="sim" Goto runbr
IF /I "%choice%"=="N" Goto quit
IF /I "%choice%"=="n" Goto quit
IF /I "%choice%"=="não" Goto quit
IF /I "%choice%"=="nao" Goto quit
IF /I "%choice%"=="Não" Goto quit
IF /I "%choice%"=="Nao" Goto quit

:NoNet
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.    
echo.          
echo.    
echo.     
echo.   
echo. 
echo.
echo                            You appear to have no internet connection, try again later.
echo.                   
echo.                  
echo.                 
echo.                      
echo.      
echo. 
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
pause & exit

:en

chcp 65001 >nul 2>&1
net session >nul 2>&1
if %errorLevel% == 0 (
    cls
) else (
color 4
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.    
echo.          
echo.    
echo.     
echo.   
echo. 
echo.
echo                                i think SOMEBODY forgot to run the app as administator...
echo.                   
echo.                  
echo.                 
echo.                      
echo.      
echo. 
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
    pause & exit
)
cd %systemroot%\system32
cls
echo.
echo.
echo.
echo ########################################################################################################################
echo                                                    Terabyte Tweaker                                          
echo ########################################################################################################################
echo              ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄                               ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
echo             ▄████████████████████████████████                             ▄████████████████████████████████         
echo            ▐█████████████████████████████████▌                           ▐█████████████████████████████████▌
echo            ███████████████████████████████████▄                          ███████████████████████████████████▌
echo           ▀▀▀▀▀▀▀▀▀▀▀▀▀▀█████████▀▀▀▀▀▀▀▀▀▀▀▀▀▀                         ▀▀▀▀▀▀▀▀▀▀▀▀▀▀█████████▀▀▀▀▀▀▀▀▀▀▀▀▀▀
echo                        █████████▌                                                    █████████▌
echo                       ██████████                                                    ██████████
echo                      ██████████                                                    ▄█████████ 
echo                     ▄████████████████████▀                                        ▐████████████████████▀
echo                     ███████████████████▀                                          ████████████████████
echo                    ███████████████████                                           ███████████████████▀
echo                              ███████▀                                                      ███████▀
echo                             ▐██████                                                        ██████
echo                             █████▀                                                        █████▀
echo                            ▐███▀                                                          ███▀
echo                            ███                                                           ███
echo                            █▀                                                            █▀   
echo ########################################################################################################################
echo                                                   by Teraman_br#5060                                         
echo ########################################################################################################################
echo.
echo.
echo.
SET /P choice=Do you wish to install the Tweaks? (Y/N):
IF /I "%choice%"=="Y" Goto run
IF /I "%choice%"=="y" Goto run
IF /I "%choice%"=="yeah" Goto run
IF /I "%choice%"=="Yes" Goto run
IF /I "%choice%"=="yes" Goto run
IF /I "%choice%"=="N" Goto quit
IF /I "%choice%"=="n" Goto quit
IF /I "%choice%"=="No" Goto quit
IF /I "%choice%"=="no" Goto quit

:runbr
chcp 65001 >nul 2>&1
cls
TITLE Aplicando Terabyte Tweaker...
cls
echo Carregando...
echo -------------------------------------
echo Progresso: ░░░░░░░░░░░░░░░░░░░░ 0%%
echo -------------------------------------
goto 0
:0PT
:1PT
chcp 65001 >nul 2>&1
cls
echo Carregando...
echo -------------------------------------
echo Progresso: █░░░░░░░░░░░░░░░░░░░ 5%%
echo -------------------------------------
goto 5
:2PT
chcp 65001 >nul 2>&1
echo Carregando...
echo -------------------------------------
echo Progresso: ██░░░░░░░░░░░░░░░░░░ 10%%
echo -------------------------------------
goto 10
:3PT
chcp 65001 >nul 2>&1
echo Carregando...
echo -------------------------------------
echo Progresso: ███░░░░░░░░░░░░░░░░░ 15%%
echo -------------------------------------
goto 15
:4PT
chcp 65001 >nul 2>&1
echo Carregando...
echo -------------------------------------
echo Progresso: ████░░░░░░░░░░░░░░░░ 20%%
echo -------------------------------------
goto 20
:5PT
chcp 65001 >nul 2>&1
echo Carregando...
echo -------------------------------------
echo Progresso: █████░░░░░░░░░░░░░░░ 25%%
echo -------------------------------------
goto 25
:6PT
chcp 65001 >nul 2>&1
echo Carregando...
echo -------------------------------------
echo Progresso: ██████░░░░░░░░░░░░░░ 30%%
echo -------------------------------------
goto 30
:7PT
chcp 65001 >nul 2>&1
echo Carregando...
echo ------------------------------------- 
echo Progresso: ███████░░░░░░░░░░░░░ 35%%
echo -------------------------------------
goto 35
:8PT
chcp 65001 >nul 2>&1
echo Carregando...
echo -------------------------------------
echo Progresso: ████████░░░░░░░░░░░░ 40%%
echo -------------------------------------
goto 40
:9PT
chcp 65001 >nul 2>&1
echo Carregando...
echo -------------------------------------
echo Progresso: █████████░░░░░░░░░░░ 45%%
echo -------------------------------------
goto 45
:10PT
chcp 65001 >nul 2>&1
echo Carregando...
echo -------------------------------------
echo Progresso: ██████████░░░░░░░░░░ 50%%
echo -------------------------------------
goto 50
:11PT
chcp 65001 >nul 2>&1
echo Carregando...
echo -------------------------------------
echo Progresso: ███████████░░░░░░░░░ 55%%
echo -------------------------------------
goto 55
:12PT
chcp 65001 >nul 2>&1
echo Carregando...
echo -------------------------------------
echo Progresso: ████████████░░░░░░░░ 60%%
echo -------------------------------------
goto 60
:13PT
chcp 65001 >nul 2>&1
echo Carregando...
echo -------------------------------------
echo Progresso: █████████████░░░░░░░ 65%%
echo -------------------------------------
goto 65
:14PT
chcp 65001 >nul 2>&1
echo Carregando...
echo -------------------------------------
echo Progresso: ██████████████░░░░░░ 70%%
echo -------------------------------------
goto 70
:15PT
chcp 65001 >nul 2>&1
echo Carregando...
echo -------------------------------------
echo Progresso: ███████████████░░░░░ 75%%
echo -------------------------------------
goto 75
:16PT
chcp 65001 >nul 2>&1
echo Carregando...
echo -------------------------------------
echo Progresso: ████████████████░░░░ 80%%
echo -------------------------------------
goto 80
:17PT
chcp 65001 >nul 2>&1
echo Carregando...
echo -------------------------------------
echo Progresso: █████████████████░░░ 85%%
echo -------------------------------------
goto 85
:18PT
chcp 65001 >nul 2>&1
echo Carregando...
echo -------------------------------------
echo Progresso: ██████████████████░░ 90%%
echo -------------------------------------
goto 90
:19PT
chcp 65001 >nul 2>&1
echo Carregando...
echo -------------------------------------
echo Progresso: ███████████████████░ 95%%
echo -------------------------------------
goto 95
:20PT
chcp 65001 >nul 2>&1
echo Carregando...
echo -------------------------------------
echo Progresso: ████████████████████ 100%%
echo -------------------------------------
goto 100
:EndPT
chcp 65001 >nul 2>&1
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.    
echo.          
echo.    
echo.     
echo.   
echo. 
echo                   Computador Tunado com sucesso! Espere 5 minutos para uma reinicialização automática
echo                                    ou aperte qualquer botão para reiniciar agora!
echo.                   
echo.                  
echo.                 
echo.                      
echo.      
echo. 
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
shutdown /r /t 500 -c " "
pause
shutdown /r /t 0

::=========================================================================================================================================== ::

::Inglês
:run
chcp 65001 >nul 2>&1
cls
TITLE Applying Terabyte Tweaker...
cls
echo Loading...
echo -------------------------------------
echo Progress: ░░░░░░░░░░░░░░░░░░░░ 0%%
echo -------------------------------------
goto 0
:0EN
:1EN
chcp 65001 >nul 2>&1
echo Loading...
echo -------------------------------------
echo Progress: █░░░░░░░░░░░░░░░░░░░ 5%%
echo -------------------------------------
goto 5
:2EN
chcp 65001 >nul 2>&1
echo Loading...
echo -------------------------------------
echo Progress: ██░░░░░░░░░░░░░░░░░░ 10%%
echo -------------------------------------
goto 10
:3EN
chcp 65001 >nul 2>&1
echo Loading...
echo -------------------------------------
echo Progress: ███░░░░░░░░░░░░░░░░░ 15%%
echo -------------------------------------	
goto 15
:4EN
chcp 65001 >nul 2>&1
echo Loading...
echo -------------------------------------
echo Progress: ████░░░░░░░░░░░░░░░░ 20%%
echo -------------------------------------
goto 20
:5EN
chcp 65001 >nul 2>&1
echo Loading...
echo -------------------------------------
echo Progress: █████░░░░░░░░░░░░░░░ 25%%
echo -------------------------------------
goto 25
:6EN
chcp 65001 >nul 2>&1
echo Loading...
echo -------------------------------------
echo Progress: ██████░░░░░░░░░░░░░░ 30%%
echo -------------------------------------
goto 30
:7EN
chcp 65001 >nul 2>&1
echo Loading...
echo ------------------------------------- 
echo Progress: ███████░░░░░░░░░░░░░ 35%%
echo -------------------------------------
goto 35
:8EN
chcp 65001 >nul 2>&1
echo Loading...
echo -------------------------------------
echo Progress: ████████░░░░░░░░░░░░ 40%%
echo -------------------------------------
goto 40
:9EN
chcp 65001 >nul 2>&1
echo Loading...
echo -------------------------------------
echo Progress: █████████░░░░░░░░░░░ 45%%
echo -------------------------------------
goto 45
:10EN
chcp 65001 >nul 2>&1
echo Loading...
echo -------------------------------------
echo Progress: ██████████░░░░░░░░░░ 50%%
echo -------------------------------------
goto 50
:11EN
chcp 65001 >nul 2>&1
echo Loading...
echo -------------------------------------
echo Progress: ███████████░░░░░░░░░ 55%%
echo -------------------------------------
goto 55
:12EN
chcp 65001 >nul 2>&1
echo Loading...
echo -------------------------------------
echo Progress: ████████████░░░░░░░░ 60%%
echo -------------------------------------
goto 60
:13EN
chcp 65001 >nul 2>&1
echo Loading...
echo -------------------------------------
echo Progress: █████████████░░░░░░░ 65%%
echo -------------------------------------
goto 65
:14EN
chcp 65001 >nul 2>&1
echo Loading...
echo -------------------------------------
echo Progress: ██████████████░░░░░░ 70%%
echo -------------------------------------
goto 70
:15EN
chcp 65001 >nul 2>&1
echo Loading...
echo -------------------------------------
echo Progress: ███████████████░░░░░ 75%%
echo -------------------------------------
goto 75
:16EN
chcp 65001 >nul 2>&1
echo Loading...
echo -------------------------------------
echo Progress: ████████████████░░░░ 80%%
echo -------------------------------------
goto 80
:17EN
chcp 65001 >nul 2>&1
echo Loading...
echo -------------------------------------
echo Progress: █████████████████░░░ 85%%
echo -------------------------------------
goto 85
:18EN
chcp 65001 >nul 2>&1
echo Loading...
echo -------------------------------------
echo Progress: ██████████████████░░ 90%%
echo -------------------------------------
goto 90
:19EN
chcp 65001 >nul 2>&1
echo Loading...
echo -------------------------------------
echo Progress: ███████████████████░ 95%%
echo -------------------------------------
goto 95
:20EN
chcp 65001 >nul 2>&1
echo Loading...
echo -------------------------------------
echo Progress: ████████████████████ 100%%
echo -------------------------------------
goto 100
:EndEN
chcp 65001 >nul 2>&1
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.    
echo.          
echo.    
echo.     
echo.   
echo. 
echo                      Computer sucessfuly tweaked! Wait 5 minutes for the computer to restart
echo                                         or press any button to restart now!
echo.                   
echo.                  
echo.                 
echo.                      
echo.      
echo. 
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
shutdown /r /t 500 -c " "
pause
shutdown /r /t 0


::=========================================================================================================================================== ::

:0

chcp 437 >nul 2>&1
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  echo Criando Ponto de Restauração...
) ELSE (
  echo Creating a Restore Point...
)
)
powershell Enable-ComputerRestore -Drive 'C:\', 'D:\', 'E:\', 'F:\', 'G:\' >nul 2>&1
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  powershell Checkpoint-Computer -Description 'Ponto de Restauração Terabyte' >nul 2>&1
) ELSE (
  powershell Checkpoint-Computer -Description 'Terabyte Restore Point' >nul 2>&1
)
)
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  cls
  goto 1PT
) ELSE (
  cls
  goto 1EN
)
)

::=========================================================================================================================================== ::

:5

chcp 437 >nul 2>&1
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  echo Aplicando Limpeza de cache da internet + MTU + DNS + Tweaks... 
) ELSE (
  echo Applying Internet Cache Cleaning + MTU + DNS + Tweaks... 
)
)
::Internet Cache Cleaning
ipconfig /release >nul 2>&1
ipconfig /renew >nul 2>&1
arp -d * >nul 2>&1
nbtstat -R >nul 2>&1
nbtstat -RR >nul 2>&1
ipconfig /flushdns >nul 2>&1
ipconfig /registerdns >nul 2>&1
netsh int tcp set global autotuninglevel=normal >nul 2>&1
netsh interface 6to4 set state disabled >nul 2>&1
netsh int isatap set state disable >nul 2>&1
netsh int tcp set global timestamps=disabled >nul 2>&1
netsh int tcp set heuristics disabled >nul 2>&1
netsh int tcp set global chimney=disabled >nul 2>&1
netsh int tcp set global ecncapability=disabled >nul 2>&1
netsh int tcp set global rsc=enabled >nul 2>&1
netsh int tcp set global nonsackrttresiliency=disabled >nul 2>&1
netsh int tcp set security mpp=disabled >nul 2>&1
netsh int tcp set security profiles=disabled >nul 2>&1
netsh int ip set global icmpredirects=disabled >nul 2>&1
netsh int tcp set security mpp=disabled profiles=disabled >nul 2>&1
netsh int ip set global multicastforwarding=disabled >nul 2>&1
netsh int tcp set supplemental internet congestionprovider=ctcp >nul 2>&1
netsh interface teredo set state disabled >nul 2>&1
netsh winsock reset >nul 2>&1
netsh int isatap set state disable >nul 2>&1
netsh int ip set global taskoffload=disabled >nul 2>&1
netsh int ip set global neighborcachelimit=4096 >nul 2>&1
netsh int tcp set global dca=enabled >nul 2>&1
netsh int tcp set global netdma=enabled >nul 2>&1
PowerShell Disable-NetAdapterLso -Name "*" >nul 2>&1
::DNS
wmic nicconfig where (IPEnabled=TRUE) call SetDNSServerSearchOrder ("1.1.1.1", "1.0.0.1") >nul 2>&1
::MTU Calculator
set MTU=1473
set LASTGOOD=0
set LASTBAD=65536
set PACKETSIZE=28
set SERVER=google.com
::Check server reachability.
ping -n 1 -l 0 -f -4 google.com >nul 2>&1
if !ERRORLEVEL! NEQ 0 (
  goto :error
)
::Start looking for the maximum MTU.
:seek
ping -n 1 -l !MTU! -f -4 !SERVER! 1>nul
if !ERRORLEVEL! EQU 0 (
  set /A LASTGOOD=!MTU!
  set /A "MTU=(!MTU! + !LASTBAD!) / 2"
  if !MTU! NEQ !LASTGOOD! goto :seek
) else (
  set /A LASTBAD=!MTU!  
  set /A "MTU=(!MTU! + !LASTGOOD!) / 2"
  if !MTU! NEQ !LASTBAD! goto :seek
)
rem Print the result.
set /A "MAXMTU=!LASTGOOD! + !PACKETSIZE!"
rem Export %MAXMTU% variable.
EndLocal & set MAXMTU=%MAXMTU%
goto MTUWorks
:error
rem When something unexpected occurs.
EndLocal & set MAXMTU=-1
:MTUworks
::better network management regedits
powershell "ForEach($adapter In Get-NetAdapter){Disable-NetAdapterPowerManagement -Name $adapter.Name -ErrorAction SilentlyContinue}" >nul 2>&1
powershell "ForEach($adapter In Get-NetAdapter){Disable-NetAdapterLso -Name $adapter.Name -ErrorAction SilentlyContinue}" >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "EnablePMTUBHDetect" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "EnablePMTUDiscovery" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "UseDomainNameDevolution" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DeadGWDetectDefault" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DontAddDefaultGatewayDefault" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "QualifyingDestinationThreshold" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "EnableWsd" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "EnableICMPRedirect" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DisableIPSourceRouting" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "ArpRetryCount" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DisableDHCPMediaSense" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "TcpFinWait2Delay" /t REG_DWORD /d "2" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d "1e" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "IRPStackSize" /t REG_DWORD /d "32" /f >nul 2>&1
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "SizReqBuf" /t REG_DWORD /d "17424" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\Class\Net\Trans\000n\Ndi" /v "HelpText" /t REG_DWORD /d "000n" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DNS\Parameters" /v "MaximumUdpPacketSize" /t REG_DWORD /d "576" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BTSSvc.3.0\HttpReceive" /v "HttpBatchSize" /t REG_WORD /D "1" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BTSSvc.3.0\HttpReceive" /v "MaxReceiveInterval" /t REG_WORD /D "50" /f >nul 2>&1


FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  cls
  goto 2PT
) ELSE (
  cls
  goto 2EN
)
)


::=========================================================================================================================================== ::

:10

chcp 437 >nul 2>&1
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  echo Limpando Cache e Logs...
) ELSE (
  echo Cleaning Cache and Logs...
)
)
md c:\windows\temp >nul 2>&1
del c:\windows\logs\cbs\*.log >nul 2>&1
del C:\Windows\Logs\MoSetup\*.log >nul 2>&1
del C:\Windows\Panther\*.log /s /q >nul 2>&1
del C:\Windows\inf\*.log /s /q >nul 2>&1
del C:\Windows\logs\*.log /s /q >nul 2>&1
del C:\Windows\SoftwareDistribution\*.log /s /q >nul 2>&1
del C:\Windows\Microsoft.NET\*.log /s /q >nul 2>&1
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\WebCache\*.log /s /q >nul 2>&1
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\SettingSync\*.log /s /q >nul 2>&1
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\Explorer\ThumbCacheToDelete\*.tmp /s /q >nul 2>&1
del C:\Users\%USERNAME%\AppData\Local\Microsoft\"Terminal Server Client"\Cache\*.bin /s /q >nul 2>&1
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  cls
  goto 3PT
) ELSE (
  cls
  goto 3EN
)
)

::=========================================================================================================================================== ::

:15

chcp 437 >nul 2>&1
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  echo Aplicando Regedits...
) ELSE (
  echo Applying Regedits...
)
)
::Activate Game Mode
reg add "Computer\HKEY_CURRENT_USERS\SOFTWARE\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "Computer\HKEY_CURRENT_USERS\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "1" /f >nul 2>&1
::Activate hardware acceleration
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d "2" /f >nul 2>&1
::Disable transparency
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d "00000000" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "UseActionCenterExperience" /t REG_DWORD /d "00000000" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "AutoDownload" /t REG_DWORD /d 2 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_SZ /d "ffffffff" /f >nul 2>&1
::Faster startup
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v "StartupDelayInMSec" /t REG_DWORD /d 0 /f >nul 2>&1
::Better cache management
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "CacheHashTableBucketSize" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "CacheHashTableSize" /t REG_DWORD /d "180" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "MaxCacheEntryTtlLimit" /t REG_DWORD /d "fa00" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "MaxSOACacheEntryTtlLimit" /t REG_DWORD /d "12d" /f >nul 2>&1
::Regedit
powershell "ForEach($adapter In Get-NetAdapter){Disable-NetAdapterLso -Name $adapter.Name -ErrorAction SilentlyContinue}" >nul 2>&1
PowerShell Invoke-WebRequest "https://raw.githubusercontent.com/Teramanbr/TerabyteTweaker/main/src/Regedit.reg" -OutFile "%temp%\Regedit.reg" >nul 2>&1
reg import C:\Users\%USERNAME%\AppData\Local\Temp\Regedit.reg >nul 2>&1
del %temp%\~Regedit.reg >nul 2>&1
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  cls
  goto 4PT
) ELSE (
  cls
  goto 4EN
)
)

::=========================================================================================================================================== ::

:20

chcp 437 >nul 2>&1
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  echo Removendo Aplicativos Inúteis...
) ELSE (
  echo Debloating...
)
)
PowerShell -command "ps onedrive | Stop-Process -Force" >nul 2>&1
PowerShell -command "start-process "$env:windir\SysWOW64\OneDriveSetup.exe" "/uninstall"" >nul 2>&1
PowerShell -command "Get-AppxPackage Microsoft.Getstarted | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage Microsoft.ZuneVideo | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage Microsoft.ZuneMusic | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage Microsoft.GetHelp | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage Microsoft.Messaging | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage Microsoft.WindowsFeedbackHub | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage Microsoft.People | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage Microsoft.3DBuilder | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage Microsoft.Print3D | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage EclipseManager | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage ActiproSoftwareLLC | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage AdobeSystemsIncorporated.AdobePhotoshopExpress | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage 'D5EA27B7.Duolingo-LearnLanguagesforFree' | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage PandoraMediaInc | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage CandyCrush | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage *Wunderlist* | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage *Flipboard* | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage *Twitter* | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage *Facebook* | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage *Sway* | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage *disney* | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage Microsoft.BingTravel | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage Microsoft.BingHealthAndFitness | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage Microsoft.BingNews | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage Microsoft.BingSports | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage Microsoft.BingFoodAndDrink | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage Microsoft.BingWeather | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage Microsoft.BingFinance | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage Microsoft.Office.OneNote | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage Microsoft.MicrosoftOfficeHub | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage Microsoft.MicrosoftSolitaireCollection | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage Microsoft.BioEnrollment | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage ContentDeliveryManager | Remove-AppxPackage" >nul 2>&1
PowerShell -command "Get-AppxPackage 'Microsoft.Advertising.Xaml' | Remove-AppxPackage" >nul 2>&1
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  cls
  goto 5PT
) ELSE (
  cls
  goto 5EN
)
)

::=========================================================================================================================================== ::

:25

chcp 437 >nul 2>&1
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  echo Aplicando Plano de Energia...
) ELSE (
  echo Applying Power Plan...
)
)
powercfg -restoredefaultschemes
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/798666504190296064/Hone_Power_Plan.pow" -OutFile "C:\Hone\Resources\HoneV2.pow"
cls
powercfg /d 44444444-4444-4444-4444-444444444449 >nul 2>&1 
powercfg -import "C:\Hone\Resources\HoneV2.pow" 44444444-4444-4444-4444-444444444449 >nul 2>&1 
powercfg -SETACTIVE "44444444-4444-4444-4444-444444444449" >nul 2>&1 
powercfg /changename 44444444-4444-4444-4444-444444444449 "Terabyte Power Plan" "The Ultimate Power Plan to increase FPS, improve latency and reduce input lag. (Added by Terabyte Tweaker)" >nul 2>&1 
::Delete Balanced Plan
powercfg /d 381b4222-f694-41f0-9685-ff5bb260df2e >nul 2>&1 
::Delete High Performance Plan
powercfg /d 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c >nul 2>&1 
::Delete Power Saving Plan
powercfg /d a1841308-3541-4fab-bc81-f71556f20b4a >nul 2>&1
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  cls
  goto 6PT
) ELSE (
  cls
  goto 6EN
)
)

::=========================================================================================================================================== ::

:30

chcp 437 >nul 2>&1
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  echo Consertando Bugs do Sistema, pode levar algum tempo... 
) ELSE (
  echo Fixing system bugs, may take a while... 
)
)
DISM /Online /Cleanup-Image /StartComponentCleanup >nul 2>&1
DISM /Online /Cleanup-Image /RestoreHealth >nul 2>&1
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  cls
  goto 7PT
) ELSE (
  cls
  goto 7EN
)
)

::=========================================================================================================================================== ::

:35

chcp 437 >nul 2>&1
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  echo Aplicando Tweaks de Jogos...
) ELSE (
  echo Applying Game Specific Tweaks...
)
)
cd %appdata% >nul 2>&1
cd .minecraft >nul 2>&1
::Non-Steam Game Tweaks

::Minecraft Options
powershell -Command "(Get-Content options.txt) -replace 'gamma:\d+.\d+', 'gamma:10.0' | Out-File -encoding default options.txt" >nul 2>&1
powershell -Command "(Get-Content options.txt) -replace 'renderDistance:\d+', 'renderDistance:2' | Out-File -encoding default options.txt" >nul 2>&1
powershell -Command "(Get-Content options.txt) -replace 'particles:\d+', 'particles:2' | Out-File -encoding default options.txt" >nul 2>&1
powershell -Command "(Get-Content options.txt) -replace 'anaglyph3d:true', 'anaglyph3d:false' | Out-File -encoding default options.txt" >nul 2>&1
powershell -Command "(Get-Content options.txt) -replace 'maxFps:\d+', 'maxFps:9999' | Out-File -encoding default options.txt" >nul 2>&1
powershell -Command "(Get-Content options.txt) -replace 'graphicsMode:\d+', 'graphicsMode:0' | Out-File -encoding default options.txt" >nul 2>&1
powershell -Command "(Get-Content options.txt) -replace 'anaglyph3d:true', 'anaglyph3d:false' | Out-File -encoding default options.txt" >nul 2>&1
powershell -Command "(Get-Content options.txt) -replace 'fboEnable:false', 'fboEnable:true' | Out-File -encoding default options.txt" >nul 2>&1
powershell -Command "(Get-Content options.txt) -replace 'fancyGraphics:true', 'fancyGraphics:false' | Out-File -encoding default options.txt" >nul 2>&1
powershell -Command "(Get-Content options.txt) -replace 'renderClouds:true', 'renderClouds:false' | Out-File -encoding default options.txt" >nul 2>&1
powershell -Command "(Get-Content options.txt) -replace 'snooperEnabled:false', 'snooperEnabled:true' | Out-File -encoding default options.txt" >nul 2>&1
powershell -Command "(Get-Content options.txt) -replace 'useVbo:false', 'useVbo:true' | Out-File -encoding default options.txt" >nul 2>&1
powershell -Command "(Get-Content options.txt) -replace 'advancedItemTooltips:false', 'advancedItemTooltips:true' | Out-File -encoding default options.txt" >nul 2>&1
powershell -Command "(Get-Content options.txt) -replace 'heldItemTooltips:false', 'advancedItemTooltips:true' | Out-File -encoding default options.txt" >nul 2>&1
powershell -Command "(Get-Content options.txt) -replace 'ao:\d+', 'ao:0' | Out-File -encoding default options.txt" >nul 2>&1
powershell -Command "(Get-Content options.txt) -replace 'soundCategory_music:\d+', 'soundCategory_music:0' | Out-File -encoding default options.txt" >nul 2>&1
::Optifine Options
powershell -Command "(Get-Content optionsof.txt) -replace 'ofFogType:\d+', 'ofFogType:3' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofFogStart:\d+', 'ofFogStart:0.6' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofMipmapType:\d+', 'ofMipmapType:3' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofOcclusionFancy:true', 'ofOcclusionFancy:false' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofSmoothFps:true', 'ofSmoothFps:false' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofSmoothWorld:true', 'ofSmoothWorld:false' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofAoLevel:\d+', 'ofAoLevel:0' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofClouds:\d+', 'ofClouds:3' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofCloudsHeight:\d+', 'ofCloudsHeight:0' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofTrees:\d+', 'ofTrees:1' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofDroppedItems:\d+', 'ofDroppedItems:1' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofRain:\d+', 'ofRain:3' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofAnimatedWater:\d+', 'ofAnimatedWater:0' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofAnimatedLava:\d+', 'ofAnimatedLava:0' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofAnimatedFire:false', 'ofAnimatedFire:true' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofAnimatedPortal:false', 'ofAnimatedPortal:true' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofAnimatedRedstone:false', 'ofAnimatedRedstone:true' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofAnimatedExplosion:false', 'ofAnimatedExplosion:true' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofAnimatedFlame:false', 'ofAnimatedFlame:true' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofAnimatedSmoke:false', 'ofAnimatedSmoke:true' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofVoidParticles:false', 'ofVoidParticles:true' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofWaterParticles:false', 'ofWaterParticles:true' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofPotionParticles:false', 'ofPotionParticles:true' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofFireworkParticles:false', 'ofFireworkParticles:true' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofDrippingWaterLava:false', 'ofDrippingWaterLava:true' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofAnimatedTerrain:false', 'ofAnimatedTerrain:true' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofAnimatedTextures:false', 'ofAnimatedTextures:true' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofRainSplash:true', 'ofRainSplash:false' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofLagometer:true', 'ofLagometer:false' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofShowFps:true', 'ofShowFps:false' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofAutoSaveTicks:\d+', 'ofAutoSaveTicks:4000' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofBetterGrass:\d+', 'ofBetterGrass:3' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofConnectedTextures:\d+', 'ofConnectedTextures:1' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofWeather:false', 'ofWeather:true' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofSky:true', 'ofSky:false' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofStars:true', 'ofStars:false' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofSunMoon:true', 'ofSunMoon:false' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofVignette:\d+', 'ofVignette:1' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofChunkUpdates:\d+', 'ofChunkUpdates:1' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofChunkUpdatesDynamic:true', 'ofChunkUpdatesDynamic:false' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofTime:\d+', 'ofTime:1' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofAaLevel:\d+', 'ofAaLevel:0' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofAfLevel:\d+', 'ofAfLevel:1' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofProfiler:true', 'ofProfiler:false' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofBetterSnow:true', 'ofBetterSnow:false' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofSwampColors:true', 'ofSwampColors:false' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofRandomEntities:true', 'ofRandomEntities:false' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofCustomFonts:false', 'ofCustomFonts:true' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofCustomColors:false', 'ofCustomColors:true' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofCustomItems:false', 'ofCustomItems:true' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofCustomSky:false', 'ofCustomSky:true' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofShowCapes:false', 'ofShowCapes:true' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofNaturalTextures:true', 'ofNaturalTextures:false' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofEmissiveTextures:false', 'ofEmissiveTextures:true' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofLazyChunkLoading:false', 'ofLazyChunkLoading:true' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofRenderRegions:false', 'ofRenderRegions:true' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofSmartAnimations:true', 'ofSmartAnimations:false' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofDynamicFov:false', 'ofDynamicFov:true' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofAlternateBlocks:true', 'ofAlternateBlocks:false' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofDynamicLights:\d+', 'ofDynamicLights:3' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofScreenshotSize:\d+', 'ofScreenshotSize:1' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofCustomEntityModels:false', 'ofCustomEntityModels:true' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofCustomGuis:false', 'ofCustomGuis:true' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofShowGlErrors:false', 'ofShowGlErrors:true' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofFastMath:false', 'ofFastMath:true' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofFastRender:false', 'ofFastRender:true' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofTranslucentBlocks:\d+', 'ofTranslucentBlocks:1' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofChatBackground:\d+', 'ofChatBackground:0' | Out-File -encoding default optionsof.txt" >nul 2>&1
powershell -Command "(Get-Content optionsof.txt) -replace 'ofChatShadow:false', 'ofChatShadow:true' | Out-File -encoding default optionsof.txt" >nul 2>&1

::Valorant (not tested code)

SET "valorant=C:\Users\%USERNAME%\AppData\Local\VALORANT\Saved\Config"
FOR /F "tokens=*" %%@ in ('DIR "%valorant%" /A:D /B') DO (
    SET /A "count+=1"
    SET "folder[!count!]=%%@"
)
cd "%valorant%\!folder!\Windows"
PowerShell Invoke-WebRequest "https://raw.githubusercontent.com/Teramanbr/TerabyteTweaker//main/src/VALORANT.ps1" -OutFile "C:\TT\VALORANT.ps1" >nul 2>&1
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& 'C:\TT\VALORANT.ps1'" >nul 2>&1

::Steam Game Initialization Tweaks

SET "steam=C:\Program Files (x86)\Steam\userdata"
FOR /F "tokens=*" %%@ in ('DIR "%steam%" /A:D /B') DO (
    SET /A "count+=1"
    SET "folder[!count!]=%%@"
)
cd "%steam%\!folder!\config"
powershell.exe Invoke-WebRequest "https://raw.githubusercontent.com/Teramanbr/TerabyteTweaker//main/src/SteamInit.ps1" -OutFile "C:\TT\SteamInit.ps1" >nul 2>&1
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& 'C:\TT\SteamInit.ps1'" >nul 2>&1

::back to windows folder
cd C:\Windows\System32 >nul 2>&1

FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  cls
  goto 8PT
) ELSE (
  cls
  goto 8EN
)
)

::=========================================================================================================================================== ::

:40

chcp 437 >nul 2>&1
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  echo Aplicando Tweaks para RAM e CPU...
) ELSE (
  echo Applying RAM and CPU Tweaks...
)
)
for /f "tokens=2 delims==" %%i in ('wmic os get TotalVisibleMemorySize /format:value') do set /a mem=%%i
set /a mem=%mem% + 1024000
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d %mem% /f >nul 2>&1
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  cls
  goto 9PT
) ELSE (
  cls
  goto 9EN
)
)

::=========================================================================================================================================== ::

:45

chcp 437 >nul 2>&1
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  echo Ativando Clock Resolution Services...
) ELSE (
  echo Activating Clock Resolution Services...
)
)
::This code is half mine, credits to Hone for the other half.
cd C:\TT\ 
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798314687321735199/923239120367673434/CLOCKRES.exe" -OutFile "C:\TT\CLOCKRES.exe" >nul 2>&1
FOR /F "tokens=*" %%g IN ('CLOCKRES.exe ^| find "Current"') do set "currenttimer=%%g"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798314687321735199/923239064738627594/SetTimerResolutionService.exe" -OutFile "C:\TT\SetTimerResolutionService.exe"  >nul 2>&1
sc config "STR" start= auto >nul 2>&1
NET START STR >nul 2>&1
bcdedit /set useplatformtick yes >nul 2>&1  
bcdedit /set disabledynamictick yes >nul 2>&1
cd C:\TT\ >nul 2>&1
%windir%\Microsoft.NET\Framework\v4.0.30319\InstallUtil.exe /i SetTimerResolutionService.exe >nul 2>&1
sc config "STR" start= auto >nul 2>&1
NET START STR >nul 2>&1
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  cls
  goto 10PT
) ELSE (
  cls
  goto 10EN
)
)

::=========================================================================================================================================== ::

:50

chcp 437 >nul 2>&1
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  cls
  goto 11PT
) ELSE (
  cls
  goto 11EN
)
)

::=========================================================================================================================================== ::

:55

chcp 437 >nul 2>&1
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  cls
  goto 12PT
) ELSE (
  cls
  goto 12EN
)
)

::=========================================================================================================================================== ::

:60

chcp 437 >nul 2>&1
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  cls
  goto 13PT
) ELSE (
  cls
  goto 13EN
)
)

::=========================================================================================================================================== ::

:65

chcp 437 >nul 2>&1
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  cls
  goto 14PT
) ELSE (
  cls
  goto 14EN
)
)

::=========================================================================================================================================== ::

:70

chcp 437 >nul 2>&1
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  cls
  goto 15PT
) ELSE (
  cls
  goto 15EN
)
)

::=========================================================================================================================================== ::

:75

chcp 437 >nul 2>&1
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  cls
  goto 16PT
) ELSE (
  cls
  goto 16EN
)
)

::=========================================================================================================================================== ::

:80

chcp 437 >nul 2>&1
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  cls
  goto 17PT
) ELSE (
  cls
  goto 17EN
)
)

::=========================================================================================================================================== ::

:85

chcp 437 >nul 2>&1
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  goto 18PT
  cls
) ELSE (
  cls
  goto 18EN
)
)

::=========================================================================================================================================== ::

:90

chcp 437 >nul 2>&1
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  cls
  goto 19PT
) ELSE (
  cls
  goto 19EN
)
)

::=========================================================================================================================================== ::

:95

chcp 437 >nul 2>&1
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  cls
  goto 20PT
) ELSE (
  cls
  goto 20EN
)
)

::=========================================================================================================================================== ::

:100

chcp 437 >nul 2>&1
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  echo Preparando para terminar operações...
) ELSE (
  echo Preparing to finish operations...
)
)
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  powershell Invoke-WebRequest "https://raw.githubusercontent.com/Teramanbr/TerabyteTweaker/main/src/obrigadoporusar.bat" -OutFile "C:\TT\obrigadoporusar.bat"
  reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" /v "ObrigadoPorUsar" /t REG_SZ /d C:\TT\obrigadoporusar.bat /f >nul 2>&1
  PowerShell Invoke-WebRequest "https://raw.githubusercontent.com/Teramanbr/TerabyteTweaker/main/src/desligar.ps1" -OutFile "C:\TT\desligar.ps1" >nul 2>&1
  PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& 'C:\TT\desligar.ps1'" >nul 2>&1
) ELSE (
  powershell Invoke-WebRequest "https://raw.githubusercontent.com/Teramanbr/TerabyteTweaker/main/src/thanksforusing.bat" -OutFile "C:\TT\thanksforusing.bat"
  reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" /v "ThanksForUsing" /t REG_SZ /d C:\TT\thanksforusing.bat /f >nul 2>&1
  PowerShell Invoke-WebRequest "https://raw.githubusercontent.com/Teramanbr/TerabyteTweaker/main/src/shutdown.ps1" -OutFile "C:\TT\shutdown.ps1" >nul 2>&1
  PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& 'C:\TT\shutdown.ps1'" >nul 2>&1
)
)
FOR /F "tokens=4 delims= " %%G in ('powershell.exe GET-WinSystemLocale') DO (
IF [%%G] EQU [1046] (
  cls
  goto EndPT
) ELSE (
  cls
  goto EndEN
)
)