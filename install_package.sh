#!/bin/bash

<< info
	this script is used to install the packages.
	that you will pass in the arguments.
ex. ./install_package.sh (package name)
./install_package.sh ngnix
./install_package.sh docker.io
./install_package.sh unzip

info

echo " Installing $1 "

sudo apt-get update > /dev/null

#/dev/null is a black whole wrere we can sent the irrelevant output

sudo apt-get install $1 -y > /dev/null

#$1 means a argument which is passed while running the script file and -y is used as a yes while installing or updating the package

echo " Installation completed "

