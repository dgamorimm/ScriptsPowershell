# teste com HashTable
Clear-Host
$servidores = [ordered] @{Server1="127.0.0.1";Server2="127.0.0.2";Server3="127.0.0.3"}

# Adcionar
$servidores["Server4"]="127.0.0.4"

# Remover
$servidores.Remove("Server4")

$servidores

# Contando valores
$servidores.Count

# Valor unitario
$servidores.Server1

# Ping
Test-Connection $servidores.Server1

# Exibir Valores
$servidores.Values
