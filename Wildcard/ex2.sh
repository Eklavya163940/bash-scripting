#!/bin/bash
read -p "enter your extension:" EX

DATE=$(date '+%y-%m-%d')

read -p "Please enter a file prefix: (Press ENTER for $DATE): " PRE



if [ -z "$PRE" ]
then
	for BOX in $(ls *.jpg)
	do
		mv $BOX "${DATE}-${BOX}"
		echo "Renaming ${BOX} as ${DATE}-${BOX}"
	done
else
	for BOX in $(ls *.jpg)
	do
		mv $BOX "${PRE}-${BOX}"
		echo " Renaming ${BOX} as  ${PRE}-${BOX}"
	done
fi