# Sem Parametros
function Meu-HD
    {
        Get-WmiObject Win32_LogicalDisk -Filter DriveType=3 | Select-Object DeviceID, @{'Name'='Tamanho (GB)'; 'Expression'={[math]::Truncate($_.size / 1GB)}}, @{'Name'='Espaço Livre (GB)'; 'Expression'={[math]::Truncate($_.freespace / 1GB)}},@{'Name'='Consumido (GB)'; 'Expression'={[math]::Truncate(($_.size - $_.freespace) / 1GB)}}
    }

# Com Parametros
function somar
    {
        param($a, $b)
        $resultado = $a + $b
        Write-Host "A resposta é $resultado"
    }