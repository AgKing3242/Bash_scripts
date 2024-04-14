#!/bin/bash

echo -n "Please enter your interface: "
read -r interface

network_ip=$(ifconfig $interface | grep "inet " | cut -d " " -f 10 | cut -d "." -f 1-3)
echo -e "\nThe IP Addresses alive on the network $network_ip.0:\n "
for ((i=1;i<=254;i++))
do
{
	if ping -c 1 $network_ip.$i | grep "64 bytes" > /dev/null
	then
		echo "$network_ip.$i"
	fi
}&
done
wait

