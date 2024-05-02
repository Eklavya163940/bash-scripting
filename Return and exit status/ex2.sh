#!/bin/bash

read -p "Enter dir/file/othres:" CHK

if [ -e $CHK ]
then 
	if [ -f $CHK ]
	then
		echo "$CHK is file"
		exit 0
	elif [ -d $CHK ]
	then
		echo "$CHK is Directory"
		exit 1
	else
		echo"$CHK is Other"
		exit 2
	fi
else
	echo "NOT exists"
fi