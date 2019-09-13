#!bin/bash

#ping ip address 8.8.8.8

ping -c3 8.8.8.8

#checking if there is inernet connection available

if [$? -eq 0] then
  
  echo "ineternet will be connected"

else
     echo "no ineternet connection available"
     
     exit 0
fi

exitS=0

# it will download the page requested until user press exit

until(($exitS==1));do 

read -p "please enter url of page ypu want to download or'exit'to quit" url1

echo $url1

   if [$url == "exit"];then

    exitS=1

  else
    
    wget $url1

  fi


done

exit0






