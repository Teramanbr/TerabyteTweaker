$CoreCount = Get-CimInstance -ClassName 'Win32_Processor' `
    | Measure-Object -Property 'NumberOfCores' -Sum | Select-Object -ExpandProperty Sum

$LogicalProcessors = Get-CimInstance -ClassName 'Win32_Processor' `
    | Measure-Object -Property 'NumberOfLogicalProcessors' -Sum | Select-Object -ExpandProperty Sum

$c = (reg query "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}") | Where-Object {$PSItem -Like "HKEY_*"} | Select-Object -First 1

If ($CoreCount -eq 2) {
    Write-Output 'Only 2 cores' | Out-File -FilePath C:\TT\CoreInfo\INCompatibleCoreCount.txt
        }  Else {
    Write-Output 'Seems to match the necessary' | Out-File -FilePath C:\TT\CoreInfo\CompatibleCoreCount.txt
} 

# Backup
reg export "$c" "C:\TT\TTRevert\ognic.reg" /y *>$null
# Basics
reg add "$c" /v "MIMOPowerSaveMode" /t REG_SZ /d "3" /f *>$null
reg add "$c" /v "PowerSavingMode" /t REG_SZ /d "0" /f *>$null
reg add "$c" /v "EnableGreenEthernet" /t REG_SZ /d "0" /f *>$null
reg add "$c" /v "*EEE" /t REG_SZ /d "0" /f *>$null
reg add "$c" /v "*IPSecOffloadV1IPv4" /t REG_SZ /d "0" /f *>$null
reg add "$c" /v "*IPSecOffloadV2IPv4" /t REG_SZ /d "0" /f *>$null
reg add "$c" /v "*IPSecOffloadV2" /t REG_SZ /d "0" /f *>$null
reg add "$c" /v "*RscIPv4" /t REG_SZ /d "0" /f *>$null
reg add "$c" /v "*RscIPv6" /t REG_SZ /d "0" /f *>$null
reg add "$c" /v "*PMNSOffload" /t REG_SZ /d "0" /f *>$null
reg add "$c" /v "*PMARPOffload" /t REG_SZ /d "0" /f *>$null
reg add "$c" /v "*JumboPacket" /t REG_SZ /d "0" /f *>$null
reg add "$c" /v "EnableConnectedPowerGating" /t REG_DWORD /d "0" /f *>$null
reg add "$c" /v "EnableDynamicPowerGating" /t REG_SZ /d "0" /f *>$null
reg add "$c" /v "EnableSavePowerNow" /t REG_SZ /d "0" /f *>$null
reg add "$c" /v "*FlowControl" /t REG_SZ /d "0" /f *>$null
# Power Saving Options
reg add "$c" /v "*NicAutoPowerSaver" /t REG_SZ /d "0" /f *>$null
reg add "$c" /v "ULPMode" /t REG_SZ /d "0" /f *>$null
reg add "$c" /v "EnablePME" /t REG_SZ /d "0" /f *>$null
reg add "$c" /v "AlternateSemaphoreDelay" /t REG_SZ /d "0" /f *>$null
reg add "$c" /v "AutoPowerSaveModeEnabled" /t REG_SZ /d "0" /f *>$null
# RSS
reg add "$c" /v "*NumRssQueues" /t REG_SZ /d "2" /f *>$null

If ($CoreCount -gt 4) {
    $i = (wmic path Win32_VideoController get PNPDeviceID) | Where-Object {$PSItem -Like "PCI\*"} | Select-Object -First 1
        reg add "HKLM\System\CurrentControlSet\Enum\$($i.Trim('  '))\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePolicy" /t REG_DWORD /d "3" /f *>$null
        Reg delete "HKLM\System\CurrentControlSet\Enum\$($i.Trim('  '))\Device Parameters\Interrupt Management\Affinity Policy" /v "AssignmentSetOverride" /f *>$null
    $i = (wmic path Win32_NetworkAdapter get PNPDeviceID) | Where-Object {$PSItem -Like "PCI\*"} | Select-Object -First 1
        reg add "HKLM\System\CurrentControlSet\Enum\$($i.Trim('  '))\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePolicy" /t REG_DWORD /d "3" /f *>$null
        Reg delete "HKLM\System\CurrentControlSet\Enum\$($i.Trim('  '))\Device Parameters\Interrupt Management\Affinity Policy" /v "AssignmentSetOverride" /f *>$null    
    }  Else {
        Write-Output 'Não tem os Requesitos, não são 4 núcleos' | Out-File -FilePath C:\TT\CoreInfo\NotEqualTo4.txt
} 

If ($CoreCount -ge 4) {
    $c = (reg query "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}") | Where-Object {$PSItem -Like "HKEY_*"} | Select-Object -First 1
        reg add "$c" /v "*RssBaseProcNumber" /t REG_SZ /d "2" /f *>$null
        reg add "$c" /v "*RssMaxProcNumber" /t REG_SZ /d "3" /f *>$null
    }  Else {
    $c = (reg query "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}") | Where-Object {$PSItem -Like "HKEY_*"} | Select-Object -First 1
        reg delete "$c" /v "*RssBaseProcNumber" /f *>$null
        reg delete "$c" /v "*RssMaxProcNumber" /f *>$null
        Write-Output 'Não tem os Requesitos, menos que 4 núcleos' | Out-File -FilePath C:\TT\CoreInfo\LessThan4.txt
} 

If ($CoreCount -ge 6) {
    $c = (reg query "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}") | Where-Object {$PSItem -Like "HKEY_*"} | Select-Object -First 1
        reg add "$c" /v "*RssBaseProcNumber" /t REG_SZ /d "4" /f *>$null
        reg add "$c" /v "*RssMaxProcNumber" /t REG_SZ /d "5" /f *>$null
    }  Else {
        Write-Output 'Não tem os Requesitos, menos que 6 núcleos' | Out-File -FilePath C:\TT\CoreInfo\LessThan6.txt
} 

If ($LogicalProcessors -gt $CoreCount) {
# HyperThreading is Enabled.
    $i = (wmic path Win32_USBController get PNPDeviceID) | Where-Object {$PSItem -Like "PCI\*"} | Select-Object -First 1
    reg add "HKLM\System\CurrentControlSet\Enum\$($i.Trim('  '))\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePolicy" /t REG_DWORD /d "4" /f *>$null
    reg add "HKLM\System\CurrentControlSet\Enum\$($i.Trim('  '))\Device Parameters\Interrupt Management\Affinity Policy" /v "AssignmentSetOverride" /t REG_BINARY /d "C0" /f *>$null
    $i = (wmic path Win32_VideoController get PNPDeviceID) | Where-Object {$PSItem -Like "PCI\*"} | Select-Object -First 1
    reg add "HKLM\System\CurrentControlSet\Enum\$($i.Trim('  '))\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePolicy" /t REG_DWORD /d "4" /f *>$null
    reg add "HKLM\System\CurrentControlSet\Enum\$($i.Trim('  '))\Device Parameters\Interrupt Management\Affinity Policy" /v "AssignmentSetOverride" /t REG_BINARY /d "C0" /f *>$null
    $i = (wmic path Win32_NetworkAdapter get PNPDeviceID) | Where-Object {$PSItem -Like "PCI\*"} | Select-Object -First 1
    reg add "HKLM\System\CurrentControlSet\Enum\$($i.Trim('  '))\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePolicy" /t REG_DWORD /d "4" /f *>$null
    reg add "HKLM\System\CurrentControlSet\Enum\$($i.Trim('  '))\Device Parameters\Interrupt Management\Affinity Policy" /v "AssignmentSetOverride" /t REG_BINARY /d "30" /f *>$null
    Write-Output 'HyperThreading está Habilitado'
        }  Else {
# HyperThreading is Disabled.
    $i = (wmic path Win32_USBController get PNPDeviceID) | Where-Object {$PSItem -Like "PCI\*"} | Select-Object -First 1
    reg add "HKLM\System\CurrentControlSet\Enum\$($i.Trim('  '))\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePolicy" /t REG_DWORD /d "4" /f *>$null
    reg add "HKLM\System\CurrentControlSet\Enum\$($i.Trim('  '))\Device Parameters\Interrupt Management\Affinity Policy" /v "AssignmentSetOverride" /t REG_BINARY /d "08" /f *>$null
    $i = (wmic path Win32_VideoController get PNPDeviceID) | Where-Object {$PSItem -Like "PCI\*"} | Select-Object -First 1
    reg add "HKLM\System\CurrentControlSet\Enum\$($i.Trim('  '))\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePolicy" /t REG_DWORD /d "4" /f *>$null
    reg add "HKLM\System\CurrentControlSet\Enum\$($i.Trim('  '))\Device Parameters\Interrupt Management\Affinity Policy" /v "AssignmentSetOverride" /t REG_BINARY /d "02" /f *>$null
    $i = (wmic path Win32_NetworkAdapter get PNPDeviceID) | Where-Object {$PSItem -Like "PCI\*"} | Select-Object -First 1
    reg add "HKLM\System\CurrentControlSet\Enum\$($i.Trim('  '))\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePolicy" /t REG_DWORD /d "4" /f *>$null
    reg add "HKLM\System\CurrentControlSet\Enum\$($i.Trim('  '))\Device Parameters\Interrupt Management\Affinity Policy" /v "AssignmentSetOverride" /t REG_BINARY /d "0" /f *>$null
    Write-Output 'HyperThreading não está habilitado' | Out-File -FilePath C:\TT\CoreLogs.txt
} 
exit