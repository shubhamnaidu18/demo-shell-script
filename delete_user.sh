#!/bin/bash
#
<<info 
	this is shell script will delete the user
info

echo "==============Deletion of user==================="

function user_deleted {

read -p " enter the user name you wish to delete : " username

sudo userdel -r $username


}

for (( i = 1 ; num <= 3; num++ ))
do 
	user_deleted
done	
