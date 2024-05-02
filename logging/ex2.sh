#!/bin/bash

function log()
{
	local N="RANDOM Num : $@ "
	echo "$N"
	logger -i -t "randomly" -p user.info "$N"
}

NO=1
while [ $NO -le "3" ]
do
	log $RANDOM
	((NO++))
done