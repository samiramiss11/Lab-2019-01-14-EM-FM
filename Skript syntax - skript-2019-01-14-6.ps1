Kör kommandot:
10,20,30,40 | ForEach-Object -Process {$_/10}
Vilket resultat får du?

PS C:\Users\Administrator> 10,20,30,40 | ForEach-Object -Process {$_/10}
1
2
3
4


I think this works as an operation statement which run a proccess and prints result as output.
10/10=1
20/10=2
30/10=3
40/10=4
