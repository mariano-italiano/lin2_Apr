#!/bin/bash

# Skrypt przechwytujący sygnał SIGINT

LOGFILE=/tmp/skrypt.signals
CTRLC=0
SIGT=0

function przechwyc_sigint {
	CTRLC=$(( $CTRLC + 1 ))
	echo
	if [[ $CTRLC > 0 ]]; then
		echo "Wystąpił SIGINT po raz $CTRLC" >> $LOGFILE
	fi
}

function przechwyc_sigterm {
        SIGT=$(( $SIGT + 1 ))
        echo
        if [[ $SIGT > 0 ]]; then
                echo "Wystąpił SIGTERM po raz $SIGT" >> $LOGFILE
        fi
}


trap przechwyc_sigint SIGINT 
trap przechwyc_sigterm SIGTERM 


while true
do
	echo "Śpimy 10 sekund"
	sleep 10
done
