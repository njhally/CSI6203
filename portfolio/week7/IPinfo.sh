#!/bin/bash


#to get the information from ifconfig command
net_info="$(ifconfig)"

#pass out the ip address lines using sed
addresses=$(echo "$net_info" | sed -n '/inet / {
s/inet/IP Address:/
s/netmask/\n\t\tSubnet Mask:/
s/broadcast/\n\t\tBroadcast Address:/
p
}')

#formatting output
echo -e "IP addresses on this computer are:\n$addresses"
