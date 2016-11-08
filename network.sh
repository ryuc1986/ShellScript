#!/bin/bash

echo '#########################'
echo "network configure shell"
echo -e "########################\n"

if [ $USER="root" ]
then
        echo "Username  : $USER"
        echo "Loginname : `logname`"
        echo -e "Hostname  : $HOSTNAME\n"
else
        echo 'Please change rootuser'
fi

while true 
do 

	echo '1:Basic NW <= /etc/sysconfig/network'
	echo '2:NW Interface <= /etc/sysconfig/network-scripts/ifcfg-eth0'
	echo '3:LocalDNS <= /etc/hosts'
	echo '4:DNS <= /etc/resolv.conf'
	echo '5:DNS Search <= /etc/nsswitch.conf'
	echo '6:Wireless NW'

	echo 'select 1-6:' && read SELECT1
	echo -e "\n"

	case $SELECT1 in
       		1) cat /etc/sysconfig/network ;;
       		2) cat /etc/sysconfig/network-scripts/ifcfg-eth0 ;;
        	3) cat /etc/hosts ;;
        	4) cat /etc/resolv.conf ;;
        	5) cat /etc/nsswitch.conf | more ;;
		6) cat /etc/wpa_supplicant/wpa_supplicant.conf ;;


        	" ") exit ;;
	esac

        echo -e "\n" 

done
