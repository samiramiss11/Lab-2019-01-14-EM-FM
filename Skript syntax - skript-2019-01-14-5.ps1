
#Lista alla tjänster (Services) som är startade.
Get-Service | where {$_.Status -eq "Running"}
