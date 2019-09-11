#!/bin/bash
#If there aren't two arguments to the script

read -p "enter start week " startweek
read -p "enter last folder:> " lastweek


if(($startweek==0 || $lastweek==0 || $startweek>=$lastweek)); then
#Print an error and exit
echo "Error, Please enter valid numbers" && exit 1
fi
#For every number between the first argument and the last
for ((i =$startweek; i <= $lastweek; i++))
do
#Create a new folder for that number
echo "Creating directory number $i"

mkdir "week$i"

done
