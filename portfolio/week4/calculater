#!bin/bash

# promt reader to type number for calculation

read -p "Enter first Num:> " numBer1
read -p "Enter second Num:> " numBer2

#giving any operator
echo "Enter Operator:>"
echo "+ for addition"
echo "- for subtraction" 
echo "* for multipication"
echo "/ for divide"

read Operator

case $Operator in
+) 
echo -e "Answer is = \\033[34m$((numBer1+numBer2))\\033[0m"
;;
-) 
echo -e "Answer is =  \\033[32m$((numBer1-numBer2))\\033[0m;"
;;
*) 
echo -e "Answer is =  \\033[31m$((numBer1*numBer2))\\033[0m;"
;;
/) 
echo -e "Answer is =  \\033[33m$((num1/num2))\\033[0m;"
;;
esac
