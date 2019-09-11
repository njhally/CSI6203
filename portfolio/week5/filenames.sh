FILE=$'\n' #ISF Seprater

echo "get file"

read -r mytxtFile # reading file 
echo $FILE

for file in $(cat $mytxtFile)
do
    
    if [ -d "$file" ]; then # it will check if file in directory
        echo "$file is a directory"

    elif [ -f "$file" ]; then #will show argument is file
        echo "$file is a file"

    else   
        echo " $file Niether file nor a directory!"
    fi 

done

exit 0