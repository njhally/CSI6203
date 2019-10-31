#!/bin/bash



#The main function
function()
{
    
    for (( base = 1; base <= 10; base++ ))
    do
        
            for (( height = 1; height <= 10; height++ ))
            do
            area=$( triangleArea $base $height ) 
                echo "the area of triangle with base $base and height $height is $area"
            
            done
        
    done    

}

triangleArea()
{
    echo $(( $1*$2/2 ))
}

function