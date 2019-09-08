#!/bin/bash
echo "1. create a folder
2.list files in a folder
3.copy a folder
4.save a password
5.read a password"


read -p "type any number to proceed:> " number
case $number in
 

1)~/CSI6203/portfolio/week3/foldermaker.sh
;;
2)cd ~/CSI6203/portfolio/week3 ;ls 
;;
3)~CSI6203/portfolio/week3/foldercopier.sh
;;
4)~CSI6203/portfolio/week3/filereader.sh
;;
5)cd ~CSI6203/portfolio/week3/temp ;cat secret.txt
;;

esac
exit 0