[reflection.assembly]::loadwithpartialname("System.Windows.Forms")
[reflection.assembly]::loadwithpartialname("System.Drawing")
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10,"Sucesso!","Terabyte Tweaker acabou de terminar de turbinar seu computador, que vai reiniciar em 5 minutos!",[system.windows.forms.tooltipicon]::None)