#!/bin/bash

##################
#bootloader
#?
#os
if `dmesg | grep 'redhat' or 'centos''`
 cat /etc/redhat-release
 
#kernel
uname -r

#shell
echo $SHELL

#loginname
logname

#username
whoami

#runlevel
who -r

#######################
#hostname
uname -n

#ipaddress
ifconfig -a eth0 | grep -v inet6 | grep inet

#dns　正引き/逆引き
#nslookup

#connection
#ping 

#####################
#filesystem
#mount

##############
#hardware resorce
#cpu
#memory
#disk
#network

################
#hardware info

######################
#active application

###############
#statification list
#kernel module list number
#package list number
#user list number
#lock list number
#mount list number
#kernel module list number
#kernel module loading list number

###############
#error log


################
#last login history



