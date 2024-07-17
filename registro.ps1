$programPath = "C:\Windows\powershell1.ps1"
Set-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Run" -Name "Powershell" -Value $programPath
