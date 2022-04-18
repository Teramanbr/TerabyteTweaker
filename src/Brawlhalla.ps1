Set-Location "C:\Program Files (x86)\Steam\userdata\991312408\config"
(Get-Content localconfig.vdf) -replace '"291550"
{
    "LastPlayed"		"\d+"
	"Playtime2wks"		"\d+"
	"Playtime"		"\d+"
	"BadgeData"		"\d+"
}', '"291550"
{
    "LastPlayed"		"\d+"
	"Playtime2wks"		"\d+"
	"Playtime"		"\d+"
	"BadgeData"		"\d+"
    "LaunchOptions"		"-unlockfps -framefixunbounded"
}' | Out-File -encoding default localconfig.vdf