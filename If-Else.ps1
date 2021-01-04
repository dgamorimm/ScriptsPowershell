# Consultar serviço do windows
Clear-Host
$Serv = Get-Service -Name EFS
If ($Serv.Status -eq "Running") 
    {
        Write-Host "Serviço em execução"
    }
Else
    {
        Write-Host "Serviço Parado"
    }

# net [ start | stop ] nome do seriço ---> Para parar ou startar o serviço via linha de comando

$conn = (Test-Connection www.mcsesolution.com.br -Count 1 -Quiet)
if ($conn -eq "true")
    {
        Write-Host "Internet funcionando e sistema online" -ForegroundColor Green
    }
Else
    {
        Write-Host "Internet ou sistema fora" -ForegroundColor Red
    }
        