
#-le = menor ou igual
# kill = matar o processo em execução
#-ge = maior ou igual

#========FOR==========
Clear-Host
for ($var=1; $var -le 10; $var++)
    {
        Test-Connection 192.168.0.$var -Count 1
    }

#========FOREACH==========

#ex1
Clear-Host
foreach ($numeros in 1,2,3,4,5,6,7,8) 
    {
        Write-Host $numeros
    }

#ex2
Clear-Host
foreach ($arquivos in Get-ChildItem)
    {
        if ($arquivos.IsReadOnly)
            {
                Write-Host $arquivos.FullName    
            }
    }

#ex3
Clear-Host
Get-Process notepad | foreach kill

#========WHILE==========

$i = 0
while($true)
    {
        $i++
        Write-Host "Vou contar até $i"
        if ($i -ge 1000)
            {
                break
            }   
    }