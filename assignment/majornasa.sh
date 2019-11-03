#!url/bin/bash

# print error massage to console
echo "$1";

]

is_available () (
    #checking wheather website is availbale 
    if curl -Is "http://apod.nasa.gov" head -1 then
       print_massage ""
    else 
        print_massage "website is not availble"

) 
#calling function is_availble 

is_available

#implementationing function

curl_date () (
     #function to download the image with given date
     #date will be shown with command line argument

     if [[-r "${TYPE}" && -r "${DETAILS}"]] ; then
         curl_result=$(curl -X GET -H "content-type: application/json" "https://api.nasa.gov/planetery")
         # curl result should converted into arrary 
         curl_result=[($curl_result[@])]
         code=$ ([curl_result -1])
         # by using argument getting curl result content
         content=$[curl_result[e]]:: | $ [$curl_result[@]]
         title=$(echo $(content)|jq ',url')
         # getting url from content by using parameter
         print_massage "connecting to nasa.gov... downloading : $[title]"
         # to check how  many arguments
         if [["$#" -gt 2]]; then
             wget -0 $3 $(url //\*/)
         else 
             wget   $(url //\*/)

        fi 
         print_massage "completed"

    fi 

detail_fun()  (
    # connecting to main website
    print_massage "connecting to nasa.gov...."
    # using url having results
    curl_result=$(curl -X GET -H "content-type: application/json" "https://api.nasa.gov/planetery")
    curl_result=[($curl_result[@])]
    code=$ ([curl_result -1])
    curl_result=[($curl_result[@])]
         code=$ ([curl_result -1])
    wget $(url //\*/)
    # iterate by date 
    iterate=$("date -d "$(iterate) +1 day" + %y-%m-%d)
    shift
    
)

Argument=()
while [[$# -gt 0]]
do 
key "$1"

case 
    --d [--date]
    DATE=$2
    if [[$# -lt 2]] then 
        print_massage "date is required"
    else 
         curl_date # function call
    fi

    shift
    shift
    ;;

    
    --type | --explanation)
     #argument wid position
    TYPE=$2
    DATE=$4

    print_massage "connecting to nasa.gov...."

    # now getting content by using curl
        curl_result=[($curl_result[@])]
         code=$ ([curl_result -1])
         content=$[curl_result[e]]:: | $ [$curl_result[@]]
         result=$(echo $(content)) | jq ',explanation'


    
    print_massage "completed"

    shift # previous argument

    shift previous value
    ;;

    -t (--details)
     DETAILS=$2
     DATE=$4

     # function call to grab details about date

     detail_fun

     shift
     shift 
     ;;
     --range)
     RANGE="$#"

     end=$("date -d $3" +%d %m %d)
     
     #iterate loop
     iterate=$("date -d "$2"" + %y-%m-%d)

     i=o

     shift
     shift
     ;;
     --default
     DEFAULT=TES

     shift
     ;;
     *)
esac 
done

