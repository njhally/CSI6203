#!/bin/bash
read -p "type the name of folder you would like to copy:"folderName
#if the name is valid directory
if [ -d "$folderName"];then
read -p "type the name of destination folder:"newFolderName
cp -r "$folderName" "$newFolderName"
#otherwise print an error
echo "i could not find that folder"
fi