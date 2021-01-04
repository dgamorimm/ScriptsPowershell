$wshell = New-Object -ComObject WScript.Shell

$wshell | Get-Member


$wshell.Popup("Esse curso é muito legal")

$wshell.Run("Notepad")
$wshell.AppActivate("Notepad")
Start-Sleep -Seconds 1
$wshell.SendKeys("Esse curso e muito legal")