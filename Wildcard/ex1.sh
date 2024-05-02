#!/bin/bash

DATE=$(date '+%y-%m-%d')

for BOX in $(ls *.jpg)
do
	mv $BOX "${DATE}-${BOX}"
	echo "Renaming ${BOX} as ${DATE}-${BOX}"
done