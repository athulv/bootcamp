#!/bin/bash
#Author:Athul
#This is a test script created durign the bootcamp.
#
dpkg -l apache2 &> /dev/null
if [ $? -eq 0 ]; then
	echo "already installed"
else
	echo "not installed"
fi
#Installing apache if not installed already.
echo "installing apache2 as its not present"
apt install apache2 -y &> /dev/null
if [ $? -eq 0 ]; then
	echo "apache has been installed"
else
	echo "apache not installed - check again"
fi
