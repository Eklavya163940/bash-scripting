#!/bin/bash


N=1
while read LINE
do
	echo "$N : $LINE"
	((N++))
done < /etc/passwd