
#Create variables.
$filename = "C:\temp\gronsaker" + ".txt"
$filename

#Make a list of five different vegetables.Enter two vegetables twice in the list.
$gronsaklista = "tomat","gurka","morot","salad","Grönkål","tomat","salad"

#Create a file "C: emp gronsaker.txt"
New-Item -Path $filename  -ItemType File -Force

#Sort the list in alphabetical order and with uniquely occurring vegetables.
Add-Content -value ($gronsaklista |sort | Get-Unique) $filename 

#how many vegetables the list contains.
get-content $filename | Measure-Object –word

$list5=(get-content $filename | Measure-Object –word)

$list5=$gronsaklista | Measure

#And add a ending line with how many unique vegetables the list contains.
add-content -value  ($list5.count) $filename



