(Get-Content localconfig.vdf) -replace '"291550"
{
    "LastPlayed"		"\d+"
	"Playtime2wks"		"\d+"
	"Playtime"		"\d+"
	"BadgeData"		"\d+"
	\d+				"\d+"
}', '"291550"
{
	"LastPlayed"		"1650242448"
	"Playtime2wks"		"902"
	"Playtime"		"12027"
	"BadgeData"		"020000000800"
	"LaunchOptions"		"-unlockfps -framefixunbounded"
}' | Out-File -encoding default localconfig.vdf