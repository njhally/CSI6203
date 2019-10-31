#!/bin/bash

#Program to write same data but filed with separater.
echo "Your shopping List: "

awk 'BEGIN {
    FS=","; currency="$"; 
    print "Items       | Quantity | Price    |"
    print "------------|----------|----------|" 
}

{
    printf "%-12s| %-2d       |%c%05.2f    |\n", $1, $2, currency, $3
}' shopping.csv
