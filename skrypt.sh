#!/bin/bash

if [ $1 = "--date" ] ; then
	echo $(date)
elif [ $1 = "--logs" ] ; then
	iterator=0
	max=100
	
	if [ ! -z $2 ] ; then
		max=$2
	fi
	
	while [ $iterator -lt $max ] ; do
		echo log$iterator.txt $(date) > log$iterator.txt
		iterator=$[iterator + 1]
	done
elif [ $1 = "--help" ] ; then
	echo "--date - wyświetl aktualną date"
	echo "--log - utwórz 100 plików log"
	echo "--log <number> - utwórz x plików log"
	echo "--help - wyświetl tą wiadomość"
fi
