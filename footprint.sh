#!/bin/bash

echo "Foot Printing Tool"


IPADDRESS=192.168.100.1
printf "input ipaddress: "
#read IPADDRESS


echo "Nslookup - DNS Cheack"
nslookup $IPADDRESS

sleep 2

echo "Ping"
ping -i 1 -c 3 -s 60 $IPADDRESS

sleep 2

echo "Nmap - Open Port Cheack"
nmap -sT -p 0-65535 $IPADDRESS | grep open | cut -d / -f 1 |

sleep 2

#display output  


echo "Telnet - Banner Cheack"
telnet $IPADDRESS 


