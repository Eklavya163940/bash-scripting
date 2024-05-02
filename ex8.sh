#!/bin/bash

for CHK in $@
do
if [ -e $CHK ]
then
	if [ -f $CHK ]
	then
		echo " $CHK is file"
		ls -l | grep $CHK

	elif [ -d $CHK ]
	then
		echo "$CHK is Directory"
		ls -l | grep $CHK

	else
		echo "$CHK is other type of file"
	fi

else
	echo "$CHK not exists"
fi
done