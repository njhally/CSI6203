#!/bin/bash
#if there are less than two arg in to the script

read -p "enter start week " startweek
read -p "enter last folder:> " lastweek


if(($startweek==0 || $lastweek==0 || $startweek>=$lastweek)); then
#Printing an error and exit
echo "Error- Please enter valid numbers" && exit 1
fi
# this fill print every number between last and first arg.
for ((i =$startweek; i <= $lastweek; i++))
do
#creating folder in directory that are entered
echo "Creating directory number $i"

mkdir "week$i"

done
