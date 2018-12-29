# Code from https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/clear-eventlog?view=powershell-5.1

function Clear-All-Event-Logs ($ComputerName)
{
  Write-Host 'El nombre de la computadora es:'$ComputerName
  $Logs = Get-EventLog -ComputerName $ComputerName -List | ForEach {$_.Log}
  $Logs | ForEach {Clear-EventLog -Comp $ComputerName -Log $_ }
  Get-EventLog -ComputerName $ComputerName -List
}

Clear-All-Event-Logs -Comp $Env:Computername
