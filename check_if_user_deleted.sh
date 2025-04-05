#!/bin/bash
#
<<info 
	this script will check if user is deleted or not.
info

read -p "please enter the username that you wish to check " username

if [ $(cat /etc/passwd | grep $username | wc | awk '{print $1}') == 0 ];

then
	echo " as wc is 0 the user is  deleted "
else
	echo " the user is not  deleted "
fi  
