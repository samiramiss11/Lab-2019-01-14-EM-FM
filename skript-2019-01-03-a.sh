#!/bin/bash

#show file that have been changed during last 48 hour:

Find /etc –newermt  “-48hours” – ls

#I want to backup files in samifinal and compress them into a file with current date:

name=$(date '+%Y-%m-%d')

find /ect -mtime -2 -type  f -print | xargs tar -cpvf  samifinal.tar

tar -czvf samifinal.tar.gz /home/lab02/ "$name.tar.gz" code

# Print end status message.

echo "Backup and compressing finished"









Hej Mats 

Jag hade svårt att använda några commando i ett rad. har försökt mitt bästa här .

MVH

Samira 
