#!/bin/bash
<<info
	This shell script check if user exists
info

read -p "enter the username you widh to check " username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count == 0 ];
then 
	echo " user does not exist"
else 
	echo " user does exist"
fi

