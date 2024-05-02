#!/bin/bash

while :
do
	echo -e " \n1. show disk usage"
	echo "2.Show system update: "
	echo "3 Show the users logged into the system :"

	read -p "What would you like to do? (Enter q to quit.) : " IN

case  "$IN" in

	1)
		du
		;;

	2)
		uptime
		;;
	3)
		who
		;;
	Q|q)
		echo "GOOD BYE!"
		exit 0
		;;
	*)
		echo "invalid input"
		;;
esac
done
