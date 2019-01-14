
$filename = "C:\Temp\test" + ".txt"
$filename

New-Item -Path $filename  -ItemType File -Force

Set-Content $filename (get-date)

Add-Content -value 'Välkommen till Nackademin' $filename 

Clear-Content $filename 
