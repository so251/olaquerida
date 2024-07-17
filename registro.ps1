# Caminho do script PowerShell
$scriptPath = "C:\Windows\powershell1.ps1"

# Cria a ação para executar o script PowerShell de forma oculta
$action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-WindowStyle Hidden -File ""$scriptPath"""

# Define o gatilho para iniciar a tarefa no boot do sistema
$trigger = New-ScheduledTaskTrigger -AtStartup

# Configurações da tarefa agendada para permitir execução em laptops/baterias e não interromper se estiverem em uso
$settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries -StartWhenAvailable

# Registra a tarefa agendada no sistema
Register-ScheduledTask -TaskName "Powershell Boot Script" -Action $action -Trigger $trigger -Settings $settings -Description "PowerShell" -Force
