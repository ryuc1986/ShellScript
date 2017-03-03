#!/bin/bash

IPADDRESS=192.168.100.1
nmap -sT -p 0-65535 $IPADDRESS -o nmap.txt
NMAP="nmap.txt"

`cat $NMAP | grep open | cut -d "/" -f 1 > port.txt`
PORT="port.txt"


echo "nc - Banner Check"

WC=`wc -l $PORT | cut -d " " -f 1` 
echo "Open Port : $WC"

i=1

while [ $i -lt `expr $WC + 1` ]
 do

	P=${i}p

	PORTCHECK=`sed -n -e ${P} < $PORT` 
       
	echo "ipaddress : $IPADDRESS"
	echo "port : $PORTCHECK"
	nc $IPADDRESS $PORTCHECK
	
	i=`expr $i + 1`

 done


