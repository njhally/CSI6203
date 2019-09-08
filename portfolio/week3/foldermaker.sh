#!/bin/bash
#promt user to create folder
read -p "type the name of the folder you would like to create:" folderName
#making folder that user want
mkdir "$folderName"
#promt user to type their password
read -s -p "please type you are secret password:" password
#save password in textfile 
echo $passWord> Secret.txt
exit
