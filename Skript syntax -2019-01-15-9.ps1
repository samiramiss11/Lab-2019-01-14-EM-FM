

Get-EventLog -LogName "System" | 

#Get events in security log with id 4624
$items = Get-WinEvent -FilterHashtable @{logname="Security"; id=4624;}

Get-EventLog security | Where-Object {$_.TimeGenerated -gt '1/15/19'} | Where-Object {($_.InstanceID -eq 462
