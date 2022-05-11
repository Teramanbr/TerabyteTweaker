(Get-Content localconfig.vdf) -replace '					"291550"
					{
						"LastPlayed"		"\d+"
						"Playtime2wks"		"\d+"
						"Playtime"		"\d+"
						"BadgeData"		"\d+"
						"LaunchOptions"		"\d+"
					}', '					"291550"
					{
						"LastPlayed"		"\d+"
						"Playtime2wks"		"\d+"
						"Playtime"		"\d+"
						"BadgeData"		"\d+"
						"LaunchOptions"		"-unlockfps -framefixunbounded"
					}' | Out-File -encoding default localconfig.vdf
(Get-Content localconfig.vdf) -replace '					"291550"
					{
						"LastPlayed"		"\d+"
						"Playtime2wks"		"\d+"
						"Playtime"		"\d+"
						"BadgeData"		"\d+"
					}', '					"291550"
					{
						"LastPlayed"		"\d+"
						"Playtime2wks"		"\d+"
						"Playtime"		"\d+"
						"BadgeData"		"\d+"
						"LaunchOptions"		"-unlockfps -framefixunbounded"
					}' | Out-File -encoding default localconfig.vdf