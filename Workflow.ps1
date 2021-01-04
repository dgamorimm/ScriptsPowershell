# Workflow - Hello World

workflow tipo-cmdlet
    {
        Write-Output "Hello World"
    }

# Entendendo a diferebça entre workflows - O workflow da para correr em paralelo
function iniciar-editores
    {
        Start-Process Notepad
        sleep 5
        Start-Process Wordpad    
    }

workflow start-editores
    {
        Parallel
        {
            Start-Process Notepad
            sleep 5
            Start-Process Wordpad    
        }
    }