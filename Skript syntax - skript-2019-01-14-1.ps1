echo "i am creating variables":
$filename = "C:\Temp\test" + ".txt"
$filename

#echo "Create a directory "C:\emp and Create a file into the above directory named test.txt":
New-Item -Path $filename  -ItemType File -Force

#echo "Add the current date as text in test.txt":
Set-Content $filename (get-date)
echo "Radera innehållet i filen

#Add text "Välkommen till Nackademin" into test.txt":
Add-Content -value 'Välkommen till Nackademin' $filename 

#echo"Delete the contents of the file":
Clear-Content $filename 
