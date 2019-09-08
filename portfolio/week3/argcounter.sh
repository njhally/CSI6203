# printing all arguments that passed 
echo "the total of arguments:" $#
if  [ "$#" -lt "3" ];then
   exit 1
fi
echo  "more than three argument:"$#   
#checking argument type
passed=$1
if [ -d "${passed}" ]; then
    echo "$passed is a directory"
else 
    if [ -f "{$passed}" ]; then
       echo "{$passed} is a file";
    else
        echo "{$passed} is not valid";
        exit 1
    fi
fi        
#reading argument values individually
echo "first argument value:" $1
echo "second argument value:"$2
echo "third argument value:" $3
 #adding arg
 for arg in $@
do
  echo "$arg"
done
  

