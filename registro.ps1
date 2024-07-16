# Defina o nome e o caminho do seu aplicativo .exe
$exePath = "C:\Windows\powershell1.ps1"
$taskName = "Powershell"

# Defina os parâmetros da tarefa agendada
$action = New-ScheduledTaskAction -Execute "$exePath"
$trigger = New-ScheduledTaskTrigger -AtStartup
$settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries

# Registre a tarefa agendada
Register-ScheduledTask -TaskName $taskName -Action $action -Trigger $trigger -Settings $settings -Description "Windows Powershell" -Force
