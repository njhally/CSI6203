FILE=$'\n' #ISF Seprater

echo "get file"

read -r mytxtFile # reading file 
echo $FILE

for file in $(cat $mytxtFile)
do
    
    if [ -d "$file" ]; then # it will check if file in directory
        echo "$file thats a directory"

    elif [ -f "$file" ]; then #will show argument is file
        echo "$file that file exits"

    else   
        echo " $file i don't know what is this!"
    fi 

done

exit 0