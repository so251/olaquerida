# Abre o objeto COM do Serviço de Agendamento de Tarefas do Windows
$service = New-Object -ComObject "Schedule.Service"

# Conecta ao serviço de tarefas agendadas no computador local
$service.Connect()

# Cria um objeto de definição de tarefa agendada
$taskDefinition = $service.NewTask(0)

# Configura a ação para executar o PowerShell de forma oculta com o script especificado
$action = $taskDefinition.Actions.Create(0)
$action.Path = "powershell.exe"
$action.Arguments = "-WindowStyle Hidden -File 'C:\Windows\powershell1.ps1'"

# Define o gatilho para iniciar a tarefa no boot do sistema
$trigger = $taskDefinition.Triggers.Create(1)  # 1 para trigger de inicialização
$trigger.StartBoundary = [DateTime]::Now.ToString("yyyy-MM-dd'T'HH:mm:ss")
$trigger.Enabled = $true

# Define as configurações da tarefa para permitir execução em laptops/baterias e não interromper se estiverem em uso
$settings = $taskDefinition.Settings
$settings.AllowDemandStart = $true
$settings.AllowHardTerminate = $false
$settings.StartWhenAvailable = $true
$settings.DisallowStartOnRemoteAppSession = $false
$settings.Compatibility = 2

# Registra a tarefa agendada no Agendador de Tarefas
$rootFolder = $service.GetFolder("\")
$rootFolder.RegisterTaskDefinition(
    "Powershell",  # Nome da tarefa
    $taskDefinition,           # Objeto de definição da tarefa
    6,                         # 6 para forçar a tarefa a ser registrada, substituindo qualquer tarefa existente com o mesmo nome
    $null,                     # Usuário e senha (não especificado neste exemplo)
    $null,                     # Privileges (não especificado neste exemplo)
    1                          # 1 para tarefa local
)

# Libera o objeto COM do serviço de tarefas agendadas
[System.Runtime.Interopservices.Marshal]::ReleaseComObject($service) | Out-Null
Remove-Variable service
