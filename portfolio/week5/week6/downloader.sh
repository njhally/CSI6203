#!/bin/bash

#Module 6
# Author: Nav 
# Edith Cowan University.

download()
{
    read -p "Please insert the URL of the file you want to download: " url
    read -p "Type Download location: " path
    wget "$url" -nv -P "$path"
}

echo "Running..."
      
echo "download has been completed"