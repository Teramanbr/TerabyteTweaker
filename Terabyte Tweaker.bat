@Echo Off
chcp 65001 >nul 2>&1
TITLE Terabyte Tweaker
color 6
net session >nul 2>&1
if %errorLevel% == 0 (
    cls
) else (
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
echo                              acho que alguêm esqueceu de abrir o app como administrador ein...
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
SET /P choice=Deseja Permanentemente ativar os Tweaks e tunar o PC? eai? S/N?:
IF /I "%choice%"=="S" Goto 1
IF /I "%choice%"=="s" Goto 1
IF /I "%choice%"=="Sim" Goto 1
IF /I "%choice%"=="sim" Goto 1
IF /I "%choice%"=="N" Goto 2
IF /I "%choice%"=="n" Goto 2
IF /I "%choice%"=="não" Goto 2
IF /I "%choice%"=="nao" Goto 2
IF /I "%choice%"=="Não" Goto 2
IF /I "%choice%"=="Nao" Goto 2

:1
cls
TITLE Aplicando Terabyte Tweaker...
cls
echo Carregando...
echo -------------------------------------
echo Progresso: ░░░░░░░░░░░░░░░░░░░░ 0%%
echo -------------------------------------
Wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "Ponto de Restauração Terabyte", 100, 12 >nul 2>&1
powershell.exe -command "Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope LocalMachine" >nul 2>&1
cls
echo Carregando...
echo -------------------------------------
echo Progresso: █░░░░░░░░░░░░░░░░░░░ 5%%
echo -------------------------------------
ipconfig /renew >nul 2>&1
netsh int tcp set global autotuninglevel=normal >nul 2>&1
netsh interface 6to4 set state disabled >nul 2>&1
netsh int isatap set state disable >nul 2>&1
netsh int tcp set global timestamps=disabled >nul 2>&1
netsh int tcp set heuristics disabled >nul 2>&1
netsh int tcp set global chimney=disabled >nul 2>&1
netsh int tcp set global ecncapability=disabled >nul 2>&1
netsh int tcp set global rsc=disabled >nul 2>&1
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

cls
echo Carregando...
echo -------------------------------------
echo Progresso: ██░░░░░░░░░░░░░░░░░░ 10%%
echo -------------------------------------
PowerShell Disable-NetAdapterLso -Name "*" >nul 2>&1
powershell "ForEach($adapter In Get-NetAdapter){Disable-NetAdapterPowerManagement -Name $adapter.Name -ErrorAction SilentlyContinue}" >nul 2>&1
powershell "ForEach($adapter In Get-NetAdapter){Disable-NetAdapterLso -Name $adapter.Name -ErrorAction SilentlyContinue}" >nul 2>&1
cls
echo Carregando...
echo -------------------------------------
echo Progresso: ███░░░░░░░░░░░░░░░░░ 15%%
echo -------------------------------------	
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
cls
echo Carregando...
echo -------------------------------------
echo Progresso: ████░░░░░░░░░░░░░░░░ 20%%
echo -------------------------------------
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d "00000000" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "UseActionCenterExperience" /t REG_DWORD /d "00000000" /f >nul 2>&1
Reg Add HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications /v GlobalUserDisabled /t REG_DWORD /d 1 /f >nul 2>&1
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects /v
Reg Add HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications /v GlobalUserDisabled /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\Policies\Microsoft\WindowsStore /v AutoDownload /t REG_DWORD /d 2 /f >nul 2>&1
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_SZ /d "ffffffff" /f >nul 2>&1
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize /v StartupDelayInMSec /t REG_DWORD /d 0 /f >nul 2>&1
cls
echo Carregando...
echo -------------------------------------
echo Progresso: █████░░░░░░░░░░░░░░░ 25%%
echo -------------------------------------
powershell.exe -command "ps onedrive | Stop-Process -Force" >nul 2>&1
powershell.exe -command "start-process "$env:windir\SysWOW64\OneDriveSetup.exe" "/uninstall"" >nul 2>&1
powershell.exe -command "Remove-AppxPackage -Package "Microsoft.SkypeApp"" >nul 2>&1
powershell.exe -command "Remove-AppxPackage -Package "Microsoft.Print3D"" >nul 2>&1
powershell.exe -command "Remove-AppxPackage -Package "Microsoft.windowscommunicationsapps"" >nul 2>&1
powershell.exe -command "Remove-AppxPackage -Package "Microsoft.WindowsFeedbackHub"" >nul 2>&1
powershell.exe -command "Remove-AppxPackage -Package "Microsoft.WindowsMaps"" >nul 2>&1
powershell.exe -command "Remove-AppxPackage -Package "Microsoft.WindowsSoundRecorder"" >nul 2>&1
powershell.exe -command "Remove-AppxPackage -Package "Microsoft.ZuneMusic"" >nul 2>&1
powershell.exe -command "Remove-AppxPackage -Package "Microsoft.ZuneVideo"" >nul 2>&1
powershell.exe -command "Remove-AppxPackage -Package "EclipseManager"" >nul 2>&1
powershell.exe -command "Remove-AppxPackage -Package "ActiproSoftwareLLC"" >nul 2>&1
powershell.exe -command "Remove-AppxPackage -Package "AdobeSystemsIncorporated.AdobePhotoshopExpress"" >nul 2>&1
powershell.exe -command "Remove-AppxPackage -Package "Duolingo-LearnLanguagesforFree"" >nul 2>&1
powershell.exe -command "Remove-AppxPackage -Package "PandoraMediaInc"" >nul 2>&1
powershell.exe -command "Remove-AppxPackage -Package "CandyCrush"" >nul 2>&1
powershell.exe -command "Remove-AppxPackage -Package "Wunderlist"" >nul 2>&1
powershell.exe -command "Remove-AppxPackage -Package "Flipboard"" >nul 2>&1
powershell.exe -command "Remove-AppxPackage -Package "Twitter"" >nul 2>&1
powershell.exe -command "Remove-AppxPackage -Package "Facebook"" >nul 2>&1
cls
echo Carregando...
echo -------------------------------------
echo Progresso: ██████░░░░░░░░░░░░░░ 30%%
echo -------------------------------------
powercfg -restoredefaultschemes
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/798666504190296064/Hone_Power_Plan.pow" -OutFile "C:\Hone\Resources\HoneV2.pow"
cls
powercfg /d 44444444-4444-4444-4444-444444444449 >nul 2>&1 
powercfg -import "C:\Hone\Resources\HoneV2.pow" 44444444-4444-4444-4444-444444444449 >nul 2>&1 
powercfg -SETACTIVE "44444444-4444-4444-4444-444444444449" >nul 2>&1 
powercfg /changename 44444444-4444-4444-4444-444444444449 "Hone Ultimate Power Plan V2" "The Ultimate Power Plan to increase FPS, improve latency and reduce input lag. (Adicionado pelo Terabyte Tweaker)" >nul 2>&1 
::Balanced Plan
powercfg /d 381b4222-f694-41f0-9685-ff5bb260df2e >nul 2>&1 
::High Performance Plan
powercfg /d 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c >nul 2>&1 
::Power Saving Plan
powercfg /d a1841308-3541-4fab-bc81-f71556f20b4a >nul 2>&1
cls
echo Carregando...
echo ------------------------------------- 
echo Progresso: ███████░░░░░░░░░░░░░ 35%%
echo -------------------------------------
powershell "ForEach($adapter In Get-NetAdapter){Disable-NetAdapterLso -Name $adapter.Name -ErrorAction SilentlyContinue}" >nul 2>&1
powershell.exe Invoke-WebRequest "https://cdn.discordapp.com/attachments/633652458090135552/882588947706966046/Regedit.reg" -OutFile "%temp%\Regedit.reg" >nul 2>&1
reg import C:\Users\%USERNAME%\AppData\Local\Temp\Regedit.reg >nul 2>&1
del %temp%\~Regedit.reg >nul 2>&1
cls
echo Carregando...
echo -------------------------------------
echo Progresso: ████████░░░░░░░░░░░░ 40%%
echo -------------------------------------
DISM /Online /Cleanup-Image /ScanHealth >nul 2>&1
cls
echo Carregando...
echo -------------------------------------
echo Progresso: █████████░░░░░░░░░░░ 45%%
echo -------------------------------------
Dism.exe /online /Cleanup-Image /SPSuperseded >nul 2>&1
cls
echo Carregando...
echo -------------------------------------
echo Progresso: ██████████░░░░░░░░░░ 50%%
echo -------------------------------------
DISM /Online /Cleanup-Image /RestoreHealth >nul 2>&1
cls
echo Carregando...
echo -------------------------------------
echo Progresso: ███████████░░░░░░░░░ 55%%
echo -------------------------------------
cd %appdata% >nul 2>&1
cd .minecraft >nul 2>&1
(echo ofFogType:3) > optionsof.txt
(echo ofFogStart:0.6) >> optionsof.txt
(echo ofMipmapType:3) >> optionsof.txt
(echo ofOcclusionFancy:false) >> optionsof.txt
(echo ofSmoothFps:false) >> optionsof.txt
(echo ofSmoothWorld:false) >> optionsof.txt
(echo ofAoLevel:0.0) >> optionsof.txt
(echo ofClouds:3) >> optionsof.txt
(echo ofCloudsHeight:0.0) >> optionsof.txt
(echo ofTrees:1) >> optionsof.txt
(echo ofDroppedItems:1) >> optionsof.txt
(echo ofRain:3) >> optionsof.txt
(echo ofAnimatedWater:0) >> optionsof.txt
(echo ofAnimatedLava:0) >> optionsof.txt
(echo ofAnimatedFire:true) >> optionsof.txt
(echo ofAnimatedPortal:true) >> optionsof.txt
(echo ofAnimatedRedstone:true) >> optionsof.txt
(echo ofAnimatedExplosion:true) >> optionsof.txt
(echo ofAnimatedFlame:true) >> optionsof.txt
(echo ofAnimatedSmoke:true) >> optionsof.txt
(echo ofVoidParticles:true) >> optionsof.txt
(echo ofWaterParticles:true) >> optionsof.txt
(echo ofPortalParticles:true) >> optionsof.txt
(echo ofPotionParticles:true) >> optionsof.txt
(echo ofFireworkParticles:true) >> optionsof.txt
(echo ofDrippingWaterLava:true) >> optionsof.txt
(echo ofAnimatedTerrain:true) >> optionsof.txt
(echo ofAnimatedTextures:true) >> optionsof.txt
(echo ofRainSplash:true) >> optionsof.txt
(echo ofLagometer:false) >> optionsof.txt
(echo ofShowFps:false) >> optionsof.txt
(echo ofAutoSaveTicks:4000) >> optionsof.txt
(echo ofBetterGrass:3) >> optionsof.txt
(echo ofConnectedTextures:1) >> optionsof.txt
(echo ofWeather:true) >> optionsof.txt
(echo ofSky:false) >> optionsof.txt
(echo ofStars:true) >> optionsof.txt
(echo ofSunMoon:false) >> optionsof.txt
(echo ofVignette:1) >> optionsof.txt
(echo ofChunkUpdates:1) >> optionsof.txt
(echo ofChunkUpdatesDynamic:false) >> optionsof.txt
(echo ofTime:1) >> optionsof.txt
(echo ofAaLevel:0) >> optionsof.txt
(echo ofAfLevel:1) >> optionsof.txt
(echo ofProfiler:false) >> optionsof.txt
(echo ofBetterSnow:false) >> optionsof.txt
(echo ofSwampColors:false) >> optionsof.txt
(echo ofRandomEntities:false) >> optionsof.txt
(echo ofCustomFonts:false) >> optionsof.txt
(echo ofCustomColors:false) >> optionsof.txt
(echo ofCustomItems:false) >> optionsof.txt
(echo ofCustomSky:false) >> optionsof.txt
(echo ofShowCapes:true) >> optionsof.txt
(echo ofNaturalTextures:false) >> optionsof.txt
(echo ofEmissiveTextures:true) >> optionsof.txt
(echo ofLazyChunkLoading:true) >> optionsof.txt
(echo ofRenderRegions:true) >> optionsof.txt
(echo ofSmartAnimations:false) >> optionsof.txt
(echo ofDynamicFov:true) >> optionsof.txt
(echo ofAlternateBlocks:false) >> optionsof.txt
(echo ofDynamicLights:3) >> optionsof.txt
(echo ofScreenshotSize:1) >> optionsof.txt
(echo ofCustomEntityModels:false) >> optionsof.txt
(echo ofCustomGuis:false) >> optionsof.txt
(echo ofShowGlErrors:true) >> optionsof.txt
(echo ofFastMath:true) >> optionsof.txt
(echo ofFastRender:true) >> optionsof.txt
(echo ofTranslucentBlocks:1) >> optionsof.txt
(echo ofChatBackground:0) >> optionsof.txt
(echo ofChatShadow:true) >> optionsof.txt
cls
echo Carregando...
echo -------------------------------------
echo Progresso: ████████████░░░░░░░░ 60%%
echo -------------------------------------
(echo renderDistance:2) >> options.txt
(echo particles:2) >> options.txt
(echo bobView:false) >> options.txt
(echo anaglyph3d:false) >> options.txt
(echo maxFps:9999) >> options.txt
(echo fboEnable:true) >> options.txt
(echo fancyGraphics:false) >> options.txt
(echo renderClouds:false) >> options.txt
(echo snooperEnabled:true) >> options.txt
(echo enableVsync:false) >> options.txt
(echo useVbo:true) >> options.txt
(echo advancedItemTooltips:true) >> options.txt
(echo heldItemTooltips:true) >> options.txt
(echo ao:0) >> options.txt
cls
echo Carregando...
echo -------------------------------------
echo Progresso: █████████████░░░░░░░ 65%%
echo -------------------------------------
PowerShell Disable-NetAdapterLso -Name "*" >nul 2>&1
powershell "ForEach($adapter In Get-NetAdapter){Disable-NetAdapterPowerManagement -Name $adapter.Name -ErrorAction SilentlyContinue}" >nul 2>&1
cls
echo Carregando...
echo -------------------------------------
echo Progresso: ██████████████░░░░░░ 70%%
echo -------------------------------------
Dism.exe /online /Cleanup-Image /StartComponentCleanup >nul 2>&1
cls
echo Carregando...
echo -------------------------------------
echo Progresso: ███████████████░░░░░ 75%%
echo -------------------------------------
::Esse código não é meu, créditos da Hone.
for /f "tokens=2 delims==" %%i in ('wmic os get TotalVisibleMemorySize /format:value') do set /a mem=%%i
set /a mem=%mem% + 1024000
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d %mem% /f >nul 2>&1
cls
echo Carregando...
echo -------------------------------------
echo Progresso: ████████████████░░░░ 80%%
echo -------------------------------------
::Esse código não é meu, créditos da Hone.
mkdir C:\Hone >nul 2>&1
cd C:\Hone 
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798314687321735199/923239120367673434/CLOCKRES.exe" -OutFile "C:\Hone\CLOCKRES.exe" >nul 2>&1
FOR /F "tokens=*" %%g IN ('CLOCKRES.exe ^| find "Current"') do set "currenttimer=%%g"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798314687321735199/923239064738627594/SetTimerResolutionService.exe" -OutFile "C:\Hone\SetTimerResolutionService.exe"  >nul 2>&1
sc config "STR" start= auto >nul 2>&1
NET START STR >nul 2>&1
bcdedit /set useplatformtick yes >nul 2>&1  
bcdedit /set disabledynamictick yes >nul 2>&1
cd C:\Hone >nul 2>&1
%windir%\Microsoft.NET\Framework\v4.0.30319\InstallUtil.exe /i SetTimerResolutionService.exe >nul 2>&1
sc config "STR" start= auto >nul 2>&1
NET START STR >nul 2>&1
cls
echo Carregando...
echo -------------------------------------
echo Progresso: █████████████████░░░ 85%%
echo -------------------------------------
sfc /scannow >nul 2>&1
cls
echo Carregando...
echo -------------------------------------
echo Progresso: ██████████████████░░ 90%%
echo -------------------------------------
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d 1 /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d 1 /f >nul 2>&1
cls
echo Carregando...
echo -------------------------------------
echo Progresso: ███████████████████░ 95%%
echo -------------------------------------
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/633652458090135552/945455243859222608/obrigadoporusar.bat" -OutFile "C:\Hone\Resources\obrigadoporusar.bat"
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" /v "ObrigadoPorUsar" /t REG_SZ /d C:\Hone\Resources\obrigadoporusar.bat /f >nul 2>&1
cls
echo Carregando...
echo -------------------------------------
echo Progresso: ████████████████████ 100%%
echo -------------------------------------
shutdown /r -t 0