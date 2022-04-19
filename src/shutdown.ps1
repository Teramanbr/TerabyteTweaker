[reflection.assembly]::loadwithpartialname("System.Windows.Forms")
[reflection.assembly]::loadwithpartialname("System.Drawing")
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10,"Success!","Terabyte Tweaker has finished tweaking your computer! It will now restart in 5 minutes!",[system.windows.forms.tooltipicon]::None)