


echo "i am creating variables":
$filename = "C:\Temp\test2" + ".txt"
$filename

#echo "Create a directory "C:\emp and Create a file into the above directory named test2.txt":
New-Item -Path $filename  -ItemType File -Force

#echo "Add the current date as text in test2.txt":
Set-Content $filename (get-date)

#Add text "Välkommen till Nackademin" into test2.txt":
Add-Content -value 'Välkommen till Nackademin' $filename 
