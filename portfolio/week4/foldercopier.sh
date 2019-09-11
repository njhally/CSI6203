#!/bin/bash
#promt user to type foldername they want to copy
read -p "type folder you would like to copy " folderName
#find if the folder is already in directory
if [ -d "$folderName" ]
then
#giving it new destination
read -p "type the name of the destination folder " newFolderName
cp -r "$folderName" "$newFolderName"
else
#if folder not found  print an error
echo "folder not found"

fi

