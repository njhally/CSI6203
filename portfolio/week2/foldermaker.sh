#!/bin/bash
read -p "type the name of the folder you would like to create:" folderName
mkdir "$folderName"
read -s -p "please type you are secret password:" password
echo $passWord> Secret.txt
exit
