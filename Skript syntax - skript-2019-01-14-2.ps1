$filename = "C:\temp\gronsaker" + ".txt"
$filename
$gronsaklista = "tomat","gurka","morot","salad","Grönkål","tomat","salad"

New-Item -Path $filename  -ItemType File -Force

Add-Content -value ($gronsaklista |sort | Get-Unique) $filename 

 
get-content $filename | Measure-Object –word

$list5=(get-content $filename | Measure-Object –word)

$list5=$gronsaklista | Measure

add-content -value  ($list5.count) $filename



