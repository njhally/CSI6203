#!/bin/bash
filename='secret.txt'
n=1
while read line;do
#reading each line
echo "line no. $n":$line
n=$((n+1))
done < $filename

