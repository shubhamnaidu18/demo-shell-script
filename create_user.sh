#!/bin/bash
#
#this is create user and delete script

<< help 
	this << is used for multiple line comments.
	ex :- this is shell script.
	to create user and delete.
$username and $password is variable

help

echo "======== Creation of user ==========="

read -p "Please enter the username : " username

read -p "Please enter the password : " password

sudo useradd -m $username

echo -e "$password\n$password" | sudo passwd "$username"

echo "========== Creation of user done =========="


echo " ========== Deletion of user ====== "

sudo userdel -r $username | grep $username | wc | awk '{print $1}'


echo " $username is deleted "

echo " as word count is 0 the user is deleted "

