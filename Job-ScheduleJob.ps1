#=========== JOB COMUM ===========

# Criando um workflow
workflow WorkflowDemorado
    {
        while(1)
        {
        (Get-Date).ToString() + " Script demoradinho"
        Start-Sleep -Seconds 2
        }
    }

# Criando um job para que o mesmo execute em background
$wfjob = WorkflowDemorado -AsJob
$wfjob

# Verificar o job sendo executado
Receive-Job $wfjob

# Suspender
Suspend-Job $wfjob -Force

# Parar o job
Stop-Job $wfjob

# Verificar o status
Resume-Job $wfjob

#=========== JOB AGENDADO ===========

Clear-Host

# Verificando os comandos do modulo
Get-Command -Module PSScheduledJob | Sort-Object Noun

$diario = New-JobTrigger -Daily -at 3:13pm
$umavez = New-JobTrigger -Once -At (Get-Date).AddHours(1)
$semanal = New-JobTrigger -Weekly -DaysOfWeek Monday -At 6pm
$diretorioraiz = "C:\Users\dougl\OneDrive\Powershell\"

Register-ScheduledJob -Name Backup -Trigger $diario -ScriptBlock{
        Copy-Item ($diretorioraiz + "*.txt") ($diretorioraiz + "Files\") -Recurse -Force
        Copy-Item ($diretorioraiz + "*.ps1") ($diretorioraiz + "Script\") -Recurse -Force
        Copy-Item ($diretorioraiz + "*.docx") ($diretorioraiz + "Documentos\") -Recurse -Force
    }

# Verificar o que esta rodando em background
Get-ScheduledJob Backup | Get-JobTrigger

# Remover o schedule
Get-ScheduledJob Backup | Unregister-ScheduledJob