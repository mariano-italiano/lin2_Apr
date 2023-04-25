#!/bin/bash

while getopts "o:" flaga
do
	case "${flaga}" in
		o) OPERATION=${OPTARG};;
	esac

done

if [ -z "$OPERATION" ]; then
	echo
	echo "Usage: $0 -o {start|stop|status}"
	echo
	exit 0
fi

if [ "$OPERATION" = "start" ]; then
	/usr/bin/lab5.sh & 
	echo $!>/var/run/lab5.pid
        echo "Script $0 started"
elif [ "$OPERATION" = "stop" ]; then
	if [ -e /var/run/lab5.pid ]; then
		kill `cat /var/run/lab5.pid`
		rm /var/run/lab5.pid
		echo "Script $0 stopped"
	else
		echo "Script $0 is not running"
                exit 1
	fi
elif [ "$OPERATION" = "status" ]; then
	if [ -e /var/run/lab5.pid ]; then
		echo "Script $0 is running, PID=`cat /var/run/lab5.pid`"
	else
		echo "Script $0 is not running"
		exit 1
	fi
fi

while true
do 
	echo `date` >> /tmp/my-service.log
	sleep 10
done
