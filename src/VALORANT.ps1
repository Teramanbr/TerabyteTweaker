(Get-Content GameUserSettings.ini) -replace 'sg.FoliageQuality=\d+', 'sg.FoliageQuality=0' | Out-File -encoding default GameUserSettings.ini
(Get-Content GameUserSettings.ini) -replace 'sg.EffectsQuality=\d+', 'sg.EffectsQuality=0' | Out-File -encoding default GameUserSettings.ini
(Get-Content GameUserSettings.ini) -replace 'sg.TextureQuality=\d+', 'sg.TextureQuality=0' | Out-File -encoding default GameUserSettings.ini
(Get-Content GameUserSettings.ini) -replace 'sg.PostProcessQuality=\d+', 'sg.PostProcessQuality=0' | Out-File -encoding default GameUserSettings.ini
(Get-Content GameUserSettings.ini) -replace 'sg.ShadowQuality=\d+', 'sg.ShadowQuality=0' | Out-File -encoding default GameUserSettings.ini
(Get-Content GameUserSettings.ini) -replace 'sg.AntiAliasingQuality=\d+', 'sg.AntiAliasingQuality=0' | Out-File -encoding default GameUserSettings.ini
(Get-Content GameUserSettings.ini) -replace 'sg.ViewDistanceQuality=\d+', 'sg.ViewDistanceQuality=1' | Out-File -encoding default GameUserSettings.ini