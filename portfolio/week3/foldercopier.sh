#!/bin/bash
read -p > "UserInput.txt " folderName
#name is a valid directory
if [ -d "$folderName" ]
then
#going to new location new location
read -p "Destination folder:> " newFolderName
cp -r "$folderName" "$newFolderName"
else
# print an error
echo "I couldn't find that folder"

fi