#!/bin/bash
#
<<info 
	This shell script will take periodic backups
eg :- ./backup.sh <source> <dest>

src :- /home/ubuntu/scripts
dest:- /home/ubuntu/backup

info

dest=$1
src=$2

timestamp=$(date '+%Y-%m-%d-%H-%M')

zip  -r "$dest/backup_$timestamp.zip" $src

echo "backup done"
