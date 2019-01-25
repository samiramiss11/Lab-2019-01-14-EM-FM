


#create my html
New-Item C:\temp\fel.html -ItemType File

#File1 path 
$File1="C:\temp\fel.html"

#Total number of warnings, error from system logs
Get-EventLog -LogName System -EntryType Warning,Error | measure | ConvertTo-HTML | Out-File $File1 -Append

#Total number of warnings, errors have been added in the last 24 hours
Get-EventLog -LogName System -EntryType Warning,Error -After (Get-Date).AddHours(-24) | ConvertTo-HTML | Out-File $File1 -Append

#What are the last 100 unique Warnings, error messages.
Get-EventLog -LogName System -EntryType Error,Warning -Newest 100 | Sort-Object -Unique | ConvertTo-HTML | Out-File $File1 -Append

#Newest 10  Warnings, error messages, print a warning message.
$a=Get-EventLog -LogName System -EntryType Error,Warning -Newest 10 | measure
$a.Count

#If so print a warning message.
if ($a.Count -ge 10){
    Write-Warning ("There are more then 10 errors")
}
