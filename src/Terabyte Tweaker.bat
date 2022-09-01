@echo off
@title Terabyte Tweaker
SetLocal EnableDelayedExpansion
mkdir C:\TT\ >nul 2>&1
set load=
set/a loadnum=5
setlocal
set progress=0
set debloating=true
color 6

::Blank/Color Character
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a" & set "COL=%%b")

::Internet/Admin Checker
ping -n 2 -w 700 google.com >nul 2>&1
IF %ERRORLEVEL% EQU 1 (
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
) ELSE (
    net session >nul 2>&1
    if %errorLevel% == 0 (
        goto start
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
)


:start
cd %systemroot%\system32
chcp 65001 >nul 2>&1
cls
:retry
echo.
echo.
echo                                ▄▄▄▄▄▄                                     ##############################
echo                               ████████                                           %COL%[92mTerabyte Tweaker%COL%[33m
echo                               ████████                                          %COL%[92mby Teraman_br#5060%COL%[33m
echo                  ▄███▄       ▄████████▄       ▄███▄                       ##############################
echo                ▄███████▄▄▄████████████████▄▄▄███████▄   
echo                ██████████████████████████████████████                     *%COL%[92m All in One%COL%[33m
echo                 ▀██████████████████████████████████▀                      *%COL%[92m RAM Optimization%COL%[33m
echo                   ████████████████████████████████                        *%COL%[92m Better VRAM Creation%COL%[33m
echo                  ▄██████████▀▀        ▀▀██████████▄                       *%COL%[92m Cache + Log Cleaning%COL%[33m
echo                 ▄█████████▀        █    ▀██████████▄                      *%COL%[92m Power Plan Tweak%COL%[33m
echo            ▄▄▄▄██████████▀        █▀      ▀██████████▄▄▄▄                 *%COL%[92m Regedit Tweaks%COL%[33m
echo           ███████████████       ▄██        ███████████████                *%COL%[92m Internet Tweaks%COL%[33m
echo           ███████████████      ██████      ███████████████                *%COL%[92m Timer Resolution Services%COL%[33m
echo           ███████████████         ██▀      ███████████████                *%COL%[92m Game Specific Tweaks%COL%[33m
echo            ▀▀▀▀██████████▄       █▀       ▄██████████▀▀▀▀                 *%COL%[92m Server Changer%COL%[33m
echo                 ▀█████████▄     █▀       ▄█████████▀                      *%COL%[92m System Bugfixes%COL%[33m
echo                   ██████████▄▄        ▄▄██████████                        *%COL%[92m CPU Tweaks%COL%[33m
echo                  ▄████████████████████████████████▄                       *%COL%[92m GPU Tweaks%COL%[33m
echo                 ▄██████████████████████████████████▄                      *%COL%[92m Mouse Tweaks%COL%[33m
echo                ██████████████████████████████████████                     *%COL%[92m Services Optimization%COL%[33m
echo                ▀███████▀▀▀████████████████▀▀▀███████▀                     *%COL%[92m Incredibily Small File%COL%[33m
echo                  ▀███▀       ▀████████▀       ▀███▀                       *%COL%[92m Automatic Installation%COL%[33m
echo                               ████████                                    *%COL%[92m Debloater%COL%[33m
echo                               ████████                                    *%COL%[92m And many more...%COL%[33m
echo                                ▀▀▀▀▀▀                    
echo.                             %COL%[92mPress [%COL%[33mY%COL%[92m] to Install the Tweaks, [%COL%[33mN%COL%[92m] to leave or [%COL%[33mC%COL%[92m] to Configure %COL%[33m
echo.
SET /P choice=Choose Your Option:
if not '%choice%'=='' set choice=%choice:~0,1%
IF /I "%choice%"=="Y" Goto Loading
IF /I "%choice%"=="y" Goto Loading
IF /I "%choice%"=="yeah" Goto Loading
IF /I "%choice%"=="Yes" Goto Loading
IF /I "%choice%"=="yes" Goto Loading
IF /I "%choice%"=="C" Goto config
IF /I "%choice%"=="c" Goto config
IF /I "%choice%"=="N" exit
IF /I "%choice%"=="n" exit
IF /I "%choice%"=="No" exit
IF /I "%choice%"=="no" exit
cls && ECHO This is not a valid option, please try again. && pause && goto retry

:config


cls
echo.
echo                                                  ##############################
echo                                                             %COL%[92mSettings%COL%[33m
echo                                                  ##############################
echo.
echo                                                  [1] Activate Debloating: %debloating%
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
echo.
echo.
echo.
echo.
echo.
echo                                        %COL%[92mPress [%COL%[33mX%COL%[92m] to go back to the menu.%COL%[33m
echo.
echo.
SET /P choice=Select your settings:
IF /I "%choice%"=="1" ( 
  if "%debloating%"=="true" (
    set debloating=false
    ) else set debloating=true
) && goto config
IF /I "%choice%"=="x" Goto start
IF /I "%choice%"=="X" Goto start
if not '%choice%'=='' set choice=%choice:~0,1%
pause



:Loading
if %progress%==21 goto EndEN
if %loadnum%==105 goto EndEN
chcp 65001 >nul 2>&1
set load=%load%█
color a
cls
echo Loading...
echo ------------------------------------
echo Progress: %COL%[33m%load%%COL%[92m %loadnum%%%
echo ------------------------------------
ping localhost -n 3 >nul 2>&1
set/a loadnum=%loadnum% +5
goto %progress%
goto Loading

:0
::5%

chcp 437 >nul 2>&1
echo Creating a Restore Point...
powershell Enable-ComputerRestore -Drive 'C:\', 'D:\', 'E:\', 'F:\', 'G:\' >nul 2>&1
powershell Checkpoint-Computer -Description 'Terabyte Restore Point' >nul 2>&1

set/a progress=%progress% +1
goto Loading

:1
::10%

chcp 437 >nul 2>&1
echo Fixing system bugs, may take a while... 
sfc /scannow >nul 2>&1
echo Almost there... 
DISM /Online /Cleanup-Image /RestoreHealth >nul 2>&1

set/a progress=%progress% +1
goto Loading

:2
::15%

chcp 437 >nul 2>&1
echo Cleaning Cache and Logs...
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

set/a progress=%progress% +1 
goto Loading

:3
::20%

chcp 437 >nul 2>&1
echo Applying Regedits...
::Remove Windows Ads
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
::Priority
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "6" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f >nul 2>&1
::System responsiveness
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "0" /f >nul 2>&1
::Activate Game Mode
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "1" /f >nul 2>&1
::Remove Windows Game Recording, seriously, just use nvidia or obs for the love of your fps
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v "value" /t REG_DWORD /d "0" /f >nul 2>&1
::Activate hardware acceleration
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d "2" /f >nul 2>&1
::Disable transparency
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d "00000000" /f >nul 2>&1
::Better Privacy
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "AutoDownload" /t REG_DWORD /d 2 /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "UseActionCenterExperience" /t REG_DWORD /d "00000000" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d 1 /f >nul 2>&1
::Faster startup
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v "StartupDelayInMSec" /t REG_DWORD /d 0 /f >nul 2>&1
::Better cache management
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "CacheHashTableBucketSize" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "CacheHashTableSize" /t REG_DWORD /d "180" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "MaxCacheEntryTtlLimit" /t REG_DWORD /d "fa00" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "MaxSOACacheEntryTtlLimit" /t REG_DWORD /d "12d" /f >nul 2>&1
::Disable Background Apps
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsRunInBackground" /t REG_DWORD /d "2" /f >nul 2>&1
::Ultra Regedit Compilation
powershell "ForEach($adapter In Get-NetAdapter){Disable-NetAdapterLso -Name $adapter.Name -ErrorAction SilentlyContinue}" >nul 2>&1
PowerShell Invoke-WebRequest "https://raw.githubusercontent.com/Teramanbr/TerabyteTweaker/main/src/Regedit.reg" -OutFile "%temp%\Regedit.reg" >nul 2>&1
reg import C:\Users\%USERNAME%\AppData\Local\Temp\Regedit.reg >nul 2>&1
del %temp%\~Regedit.reg >nul 2>&1

set/a progress=%progress% +1
goto Loading

:4
::25%

chcp 437 >nul 2>&1
echo Debloating...
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

set/a progress=%progress% +1
goto Loading

:5
::30%

chcp 437 >nul 2>&1
echo Applying Power Plan...
powercfg -restoredefaultschemes
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/798666504190296064/Hone_Power_Plan.pow" -OutFile "C:\Hone\Resources\HoneV2.pow"
cls
powercfg /d 44444444-4444-4444-4444-444444444449 >nul 2>&1 
powercfg -import "C:\Hone\Resources\HoneV2.pow" 44444444-4444-4444-4444-444444444449 >nul 2>&1 
powercfg -SETACTIVE "44444444-4444-4444-4444-444444444449" >nul 2>&1 
powercfg /changename 44444444-4444-4444-4444-444444444449 "HoneCtrl's Power Plan" "The Ultimate Power Plan to increase FPS, improve latency and reduce input lag. (Added by Terabyte Tweaker)" >nul 2>&1 
::Delete Balanced Plan
powercfg /d 381b4222-f694-41f0-9685-ff5bb260df2e >nul 2>&1 
::Delete High Performance Plan
powercfg /d 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c >nul 2>&1 
::Delete Power Saving Plan
powercfg /d a1841308-3541-4fab-bc81-f71556f20b4a >nul 2>&1

set/a progress=%progress% +1
goto Loading

:6
::35%

chcp 437 >nul 2>&1
echo Activating Clock Resolution Services...
cd C:\TT\ 
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798314687321735199/923239120367673434/CLOCKRES.exe" -OutFile "C:\TT\CLOCKRES.exe" >nul 2>&1
FOR /F "tokens=*" %%g IN ('CLOCKRES.exe ^| find "Current"') do set "currenttimer=%%g"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798314687321735199/923239064738627594/SetTimerResolutionService.exe" -OutFile "C:\TT\SetTimerResolutionService.exe"  >nul 2>&1
sc config "STR" start= auto >nul 2>&1
NET START STR >nul 2>&1
bcdedit /set useplatformtick yes >nul 2>&1  
bcdedit /set disabledynamictick yes >nul 2>&1
cd C:\TT\ >nul 2>&1
%windir%\Microsoft.NET\Framework\v4.0.30319\InstallUtil.exe /quiet /s /i SetTimerResolutionService.exe >nul 2>&1
sc config "STR" start= auto >nul 2>&1
NET START STR >nul 2>&1

set/a progress=%progress% +1
goto Loading

:7
::40%

chcp 437 >nul 2>&1
echo Applying GPU Tweaks...
::This piece of code is half mine, credits to Auraside's HoneCtrl for the other half.
Reg query "HKLM\System\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" && Reg add "HKLM\System\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t Reg_DWORD /d "2" /f >nul 2>&1
::Enable gdi hardware acceleration
for /f %%a in ('Reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class" /v "VgaCompatible" /s ^| findstr "HKEY"') do Reg add "%%a" /v "KMD_EnableGDIAcceleration" /t Reg_DWORD /d "1" /f >nul 2>&1
::Enable GameMode
Reg add "HKCU\Software\Microsoft\GameBar" /v "AllowAutoGameMode" /t Reg_DWORD /d "1" /f >nul 2>&1
Reg add "HKCU\Software\Microsoft\GameBar" /v "AutoGameModeEnabled" /t Reg_DWORD /d "1" /f >nul 2>&1
::FSO
reg add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d "2" /f >nul 2>&1
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d "2" /f >nul 2>&1
reg add "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKCU\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKCU\System\GameConfigStore" /v "GameDVR_EFSEFeatureFlags" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\System\GameConfigStore" /v "GameDVR_DSEBehavior" /t REG_DWORD /d "2" /f >nul 2>&1
::Disable GpuEnergyDrv
Reg add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t Reg_DWORD /d "4" /f >nul 2>&1
Reg add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t Reg_DWORD /d "4" /f >nul 2>&1
::Disable Preemption
Reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t Reg_DWORD /d "0" /f >nul 2>&1
) >nul 2>&1 else (
Reg delete "HKCU\Software\Hone" /v "AllGPUTweaks" /f >nul 2>&1
::Enable Hardware Accelerated Scheduling
reg query "HKLM\System\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" && Reg add "HKLM\System\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t Reg_DWORD /d "1" /f >nul 2>&1
::Disable gdi hardware acceleration
for /f %%a in ('Reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class" /v "VgaCompatible" /s ^| findstr "HKEY"') do Reg delete "%%a" /v "KMD_EnableGDIAcceleration" /f >nul 2>&1
::Enable GameMode
Reg add "HKCU\Software\Microsoft\GameBar" /v "AllowAutoGameMode" /t Reg_DWORD /d "1" /f >nul 2>&1
Reg add "HKCU\Software\Microsoft\GameBar" /v "AutoGameModeEnabled" /t Reg_DWORD /d "1" /f >nul 2>&1
::FSO
reg delete "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /f >nul 2>&1
reg delete "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /f >nul 2>&1
reg delete "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /f >nul 2>&1
reg delete "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /f >nul 2>&1
reg delete "HKCU\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /f >nul 2>&1
reg delete "HKCU\System\GameConfigStore" /v "GameDVR_EFSEFeatureFlags" /f >nul 2>&1
reg delete "HKCU\System\GameConfigStore" /v "GameDVR_DSEBehavior" /f >nul 2>&1
::Disable GpuEnergyDrv
Reg add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t Reg_DWORD /d "2" /f >nul 2>&1
Reg add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t Reg_DWORD /d "2" /f >nul 2>&1
::Disable Preemption
Reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t Reg_DWORD /d "1" /f >nul 2>&1

set/a progress=%progress% +1
goto Loading

:8
::45%

chcp 437 >nul 2>&1
echo Applying CPU Tweaks...
::This piece of code is half mine, credits to Auraside's HoneCtrl for the other half.
for /f "tokens=*" %%f in ('wmic cpu get NumberOfCores /value ^| find "="') do set %%f
for /f "tokens=*" %%f in ('wmic cpu get NumberOfLogicalProcessors /value ^| find "="') do set %%f
for /f "tokens=3*" %%a in ('Reg query "HKLM\Software\Microsoft\Windows NT\CurrentVersion\NetworkCards" /k /v /f "Description" /s /e ^| findstr /ri "REG_SZ"') do (

if "%NumberOfCores%"=="2" ( goto endcpu )

if %NumberOfCores% gtr 4 (
	for /f %%i in ('wmic path Win32_VideoController get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
		Reg add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePolicy" /t REG_DWORD /d "3" /f >nul 2>&1
		Reg delete "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "AssignmentSetOverride" /f >nul 2>&1
	)
	for /f %%i in ('wmic path Win32_NetworkAdapter get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
		Reg add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePolicy" /t REG_DWORD /d "5" /f >nul 2>&1
		Reg delete "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "AssignmentSetOverride" /f >nul 2>&1
	)
	goto endcpu
)

if %NumberOfLogicalProcessors% gtr %NumberOfCores% (
::HyperThreading Enabled
	for /f %%i in ('wmic path Win32_USBController get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
		Reg add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePolicy" /t REG_DWORD /d "4" /f >nul 2>&1
		Reg add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "AssignmentSetOverride" /t REG_BINARY /d "C0" >nul 2>&1
	)
	for /f %%i in ('wmic path Win32_VideoController get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
		Reg add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePolicy" /t REG_DWORD /d "4" /f >nul 2>&1
		Reg add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "AssignmentSetOverride" /t REG_BINARY /d "C0" /f >nul 2>&1
	)
	for /f %%i in ('wmic path Win32_NetworkAdapter get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
		Reg add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePolicy" /t REG_DWORD /d "4" /f >nul 2>&1
		Reg add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "AssignmentSetOverride" /t REG_BINARY /d "30" /f >nul 2>&1
	)
) else (
::HyperThreading Disabled
	for /f %%i in ('wmic path Win32_USBController get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
		Reg add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePolicy" /t REG_DWORD /d "4" /f >nul 2>&1
		Reg add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "AssignmentSetOverride" /t REG_BINARY /d "08" /f >nul 2>&1
	)
	for /f %%i in ('wmic path Win32_VideoController get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
		Reg add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePolicy" /t REG_DWORD /d "4" /f >nul 2>&1
		Reg add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "AssignmentSetOverride" /t REG_BINARY /d "02" /f >nul 2>&1
	)
	for /f %%i in ('wmic path Win32_NetworkAdapter get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
		Reg add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePolicy" /t REG_DWORD /d "4" /f >nul 2>&1
		Reg add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "AssignmentSetOverride" /t REG_BINARY /d "04" /f >nul 2>&1
	)
)
:endcpu
for /f %%c in ('Reg query "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}" /s /f "%%b" /d ^| findstr /C:"HKEY"') do (
Reg export "%%c" "%SystemDrive%\TT\TTRevert\ognic.reg" /y >nul 2>&1
Reg add "%%c" /v "MIMOPowerSaveMode" /t REG_SZ /d "3" /f >nul 2>&1
Reg add "%%c" /v "PowerSavingMode" /t REG_SZ /d "0" /f >nul 2>&1
Reg add "%%c" /v "EnableGreenEthernet" /t REG_SZ /d "0" /f >nul 2>&1
Reg add "%%c" /v "*EEE" /t REG_SZ /d "0" /f >nul 2>&1
Reg add "%%c" /v "*IPSecOffloadV1IPv4" /t REG_SZ /d "0" /f >nul 2>&1
Reg add "%%c" /v "*IPSecOffloadV2IPv4" /t REG_SZ /d "0" /f >nul 2>&1
Reg add "%%c" /v "*IPSecOffloadV2" /t REG_SZ /d "0" /f >nul 2>&1
Reg add "%%c" /v "*RscIPv4" /t REG_SZ /d "0" /f >nul 2>&1
Reg add "%%c" /v "*RscIPv6" /t REG_SZ /d "0" /f >nul 2>&1
Reg add "%%c" /v "*PMNSOffload" /t REG_SZ /d "0" /f >nul 2>&1
Reg add "%%c" /v "*PMARPOffload" /t REG_SZ /d "0" /f >nul 2>&1
Reg add "%%c" /v "*JumboPacket" /t REG_SZ /d "0" /f >nul 2>&1
Reg add "%%c" /v "EnableConnectedPowerGating" /t REG_DWORD /d "0" /f >nul 2>&1
Reg add "%%c" /v "EnableDynamicPowerGating" /t REG_SZ /d "0" /f >nul 2>&1
Reg add "%%c" /v "EnableSavePowerNow" /t REG_SZ /d "0" /f >nul 2>&1
Reg add "%%c" /v "*FlowControl" /t REG_SZ /d "0" /f >nul 2>&1
Rem more powersaving options
Reg add "%%c" /v "*NicAutoPowerSaver" /t REG_SZ /d "0" /f >nul 2>&1
Reg add "%%c" /v "ULPMode" /t REG_SZ /d "0" /f >nul 2>&1
Reg add "%%c" /v "EnablePME" /t REG_SZ /d "0" /f >nul 2>&1
Reg add "%%c" /v "AlternateSemaphoreDelay" /t REG_SZ /d "0" /f >nul 2>&1
Reg add "%%c" /v "AutoPowerSaveModeEnabled" /t REG_SZ /d "0" /f >nul 2>&1
rem RSS
Reg add "%%c" /v "*NumRssQueues" /t REG_SZ /d "2" /f >nul 2>&1
if %NumberOfCores% geq 6 (
Reg add "%%c" /v "*RssBaseProcNumber" /t REG_SZ /d "4" /f >nul 2>&1
Reg add "%%c" /v "*RssMaxProcNumber" /t REG_SZ /d "5" /f >nul 2>&1
) else if %NumberOfCores% geq 4 (
Reg add "%%c" /v "*RssBaseProcNumber" /t REG_SZ /d "2" /f >nul 2>&1
Reg add "%%c" /v "*RssMaxProcNumber" /t REG_SZ /d "3" /f >nul 2>&1
) else (
Reg delete "%%c" /v "*RssBaseProcNumber" /f >nul 2>&1
Reg delete "%%c" /v "*RssMaxProcNumber" /f >nul 2>&1
) >nul 2>&1
) >nul 2>&1
) >nul 2>&1

set/a progress=%progress% +1
goto Loading

:9
::50%
chcp 437 >nul 2>&1
echo Applying RAM Tweaks...
set "mem="
    for /f "tokens=2 delims==" %%a in (
      'wmic computersystem get totalphysicalmemory /value'
    ) do for /f "delims=" %%b in (
      "%%~a"
    ) do if not defined mem set "mem=%%~b"

::  At this point %mem% is the memory size in bytes. In order to convert to
::  mebibytes we need to divide by 2^20. However, set /a cannot work with
::  numbers greater than 2^31-1; we first convert to decimal megabytes and then
::  multiply by 0.95346.
::  (This will underestimate the mebibytes a little, by about 0.025%.)

    set "memMB=%mem:~0,-6%"
    set /a "mem=((memMB-memMB/21) + (memMB-memMB/22))/2"
    set /a "pfile=((%mem%) + (%mem% / 2))"
    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagingFiles" /t REG_MULTI_SZ /D "c:\pagefile.sys %pfile% %pfile%" /f >nul 2>&1
    reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SystemPages" /t REG_DWORD /D "0" /f >nul 2>&1
for /f "tokens=2 delims==" %%i in ('wmic os get TotalVisibleMemorySize /format:value') do set /a mem=%%i
set /a mem=%mem% + 1024000
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d %mem% /f >nul 2>&1
::Disable FTH
Reg add "HKLM\Software\Microsoft\FTH" /v "Enabled" /t Reg_DWORD /d "0" /f >nul 2>&1
::Disable Desktop Composition
Reg add "HKCU\Software\Microsoft\Windows\DWM" /v "Composition" /t REG_DWORD /d "0" /f >nul 2>&1
::Disable Background apps
Reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t Reg_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\Software\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsRunInBackground" /t Reg_DWORD /d "2" /f >nul 2>&1
Reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /t Reg_DWORD /d "0" /f >nul 2>&1
::Disallow drivers to get paged into virtual memory
Reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t Reg_DWORD /d "1" /f >nul 2>&1
::Disable Page Combining and Memory Compression
Reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePageCombining" /t REG_DWORD /d "1" /f >nul 2>&1
::Use Large System Cache to improve microstuttering
Reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t Reg_DWORD /d "1" /f >nul 2>&1
::Free unused ram
Reg add "HKLM\System\CurrentControlSet\Control\Session Manager" /v "HeapDeCommitFreeBlockThreshold" /t REG_DWORD /d "262144" /f >nul 2>&1
::Auto restart Powershell on error
Reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "AutoRestartShell" /t REG_DWORD /d "1" /f >nul 2>&1
::Disk Optimizations
Reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "DontVerifyRandomDrivers" /t REG_DWORD /d "1" /f >nul 2>&1
Reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "LongPathsEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
::Disable Prefetch and Superfetch
Reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t Reg_DWORD /d "0" /f >nul 2>&1
Reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t Reg_DWORD /d "0" /f >nul 2>&1
::Disable Hibernation + Fast Startup
Reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
Reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabledDefault" /t REG_DWORD /d "0" /f >nul 2>&1
Reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
::Wait time to kill app during shutdown
Reg add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t Reg_SZ /d "1000" /f >nul 2>&1
::Wait to end service at shutdown
Reg add "HKLM\System\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t Reg_SZ /d "1000" /f >nul 2>&1
::Wait to kill non-responding app
Reg add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t Reg_SZ /d "1000" /f >nul 2>&1
::fsutil
if exist "%windir%\System32\fsutil.exe" ( 
	::Raise the limit of paged pool memory
	fsutil behavior set memoryusage 2 >nul 2>&1
	::https://www.serverbrain.org/solutions-2003/the-mft-zone-can-be-optimized.html
	fsutil behavior set mftzone 2 >nul 2>&1
	::Disable Last Access information on directories, performance/privacy
	fsutil behavior set disablelastaccess 1 >nul 2>&1
	::Disable Virtual Memory Pagefile Encryption
	fsutil behavior set encryptpagingfile 0 >nul 2>&1
	::Disables the creation of legacy 8.3 character-length file names on FAT- and NTFS-formatted volumes.
	fsutil behavior set disable8dot3 1 >nul 2>&1
	::Disable NTFS compression
	fsutil behavior set disablecompression 1 >nul 2>&1
	::Enable Trim
	fsutil behavior set disabledeletenotify 0) >nul 2>&1 else goto pass
:pass

set/a progress=%progress% +1
goto Loading

:11
::55%
chcp 437 >nul 2>&1
echo Internet Cache Cleaning
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

set/a progress=%progress% +1
goto Loading

:10
::55%
chcp 437 >nul 2>&1
echo Activating MTU Tweaks + Google DNS
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
set MAXMTU=%MAXMTU%
goto MTUWorks

:error
rem When something unexpected occurs.
set MAXMTU=-1

:MTUworks
wmic nicconfig where (IPEnabled=TRUE) call SetDNSServerSearchOrder ("8.8.8.8", "8.8.4.4") >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveDnsProbeContent" /t REG_SZ /d "8.8.4.4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveDnsProbeContentV6" /t REG_SZ /d "2001:4860:4860::8844" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveDnsProbeHost" /t REG_SZ /d "dns.google" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveDnsProbeHostV6" /t REG_SZ /d "dns.google" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "ActiveWebProbeHost" /t REG_SZ /d "www.msftconnecttest.com" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "EnableActiveProbing" /t REG_DWORD /d "1" /f >nul 2>&1

set/a progress=%progress% +1
goto Loading

:12
chcp 437 >nul 2>&1
echo Activating Service Tweaks...
::This piece of code is half mine, credits to Auraside's HoneCtrl for the other half.

Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\xbgm" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\XboxGipSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\W32Time" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\spectrum" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wcncsvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WebClient" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SysMain" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NcaSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\diagsvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UserDataSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\stisvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AdobeFlashPlayerUpdateSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TrkWks" /v "Start" /t REG_DWORD /d "4" /f  >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PimIndexMaintenanceSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DiagTrack" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\GoogleChromeElevationService" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\OneSyncSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ibtsiva" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SNMPTRAP" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\pla" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ssh-agent" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\sshd" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DoSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WbioSrvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PcaSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NetTcpPortSharing" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wersvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\gupdate" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\gupdatem" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MSiSCSI" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WMPNetworkSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CDPUserSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanWorkstation" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UnistoreSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MapsBroker" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\debugregsvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Ndu" /v "Start" /d "2" /t REG_DWORD /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TimeBrokerSvc" /v "Start" /d "3" /t REG_DWORD /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\VaultSvc" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wuauserv" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CertPropSvc" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1

set/a progress=%progress% +1
goto Loading

:13
chcp 437 >nul 2>&1
echo Applying Game Specific Tweaks...
TaskKill /F /IM javaw.exe >nul 2>&1 
cd %appdata%\.minecraft >nul 2>&1
if %errorlevel% == 1 (
  goto nomine
)
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
:nomine
::Valorant (not tested code)
cd C:\Users\%USERNAME%\AppData\Local\VALORANT\Saved\Config >nul 2>&1
if %errorlevel% == 1 (
  goto noval
)
PowerShell Invoke-WebRequest "https://raw.githubusercontent.com/Teramanbr/TerabyteTweaker/main/src/VALORANT.ps1" -OutFile "C:\TT\VALORANT.ps1" >nul 2>&1
for /d %%a in (*) do cd "C:\Users\%USERNAME%\AppData\Local\VALORANT\Saved\Config\%%~a" &&PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& 'C:\TT\VALORANT.ps1'" /b >nul 2>&1
:noval
::Steam Game Tweaks
:: =========================================================================================================================================== ::
cd "C:\Program Files (x86)\Steam\userdata"
if %errorlevel% == 1 (
  goto nosteam
)
powershell.exe Invoke-WebRequest "https://raw.githubusercontent.com/Teramanbr/TerabyteTweaker/main/src/SteamInit.ps1" -OutFile "C:\TT\SteamInit.ps1" >nul 2>&1
for /d %%a in (*) do cd "C:\Program Files (x86)\Steam\userdata\%%~a\config" &&PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& 'C:\TT\SteamInit.ps1'" &&cd ..\.. >nul 2>&1
:nosteam

::back to windows folder
cd C:\Windows\System32 >nul 2>&1

set/a progress=%progress% +1
goto Loading

:14
chcp 437 >nul 2>&1
set/a progress=%progress% +1
goto Loading

:15
chcp 437 >nul 2>&1
set/a progress=%progress% +1
goto Loading

:16
chcp 437 >nul 2>&1
set/a progress=%progress% +1
goto Loading

:17
chcp 437 >nul 2>&1
set/a progress=%progress% +1
goto Loading

:18
chcp 437 >nul 2>&1
set/a progress=%progress% +1
goto Loading

:19
chcp 437 >nul 2>&1
set/a progress=%progress% +1
goto Loading

:20
chcp 437 >nul 2>&1
set/a progress=%progress% +1
goto Loading


:EndEN
powershell Invoke-WebRequest "https://raw.githubusercontent.com/Teramanbr/TerabyteTweaker/main/src/thanksforusing.bat" -OutFile "C:\TT\thanksforusing.bat"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" /v "ThanksForUsing" /t REG_SZ /d C:\TT\thanksforusing.bat /f >nul 2>&1
PowerShell Invoke-WebRequest "https://raw.githubusercontent.com/Teramanbr/TerabyteTweaker/main/src/shutdown.ps1" -OutFile "C:\TT\shutdown.ps1" >nul 2>&1
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& 'C:\TT\shutdown.ps1'" >nul 2>&1
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
echo                      %COL%[33mComputer sucessfuly tweaked! Wait 5 minutes for the computer to restart
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