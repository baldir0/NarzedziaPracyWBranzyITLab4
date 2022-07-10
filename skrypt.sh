#!/bin/bash

if [ $1 = "--date" ] || [ $1 = "-d" ] ; then
	echo $(date)
elif [ $1 = "--logs" ] || [ $1 = "-l" ] ; then
	iterator=0
	max=100
	
	if [ ! -z $2] ; then
		max=$2
	fi
	
	while [ $iterator -lt $max ] ; do
		echo log$iterator.txt $(date) > log$iterator.txt
		iterator=$[iterator + 1]
	done
elif [ $1 = "--help" ] || [ $1 = "-h" ] ; then
	echo "[--date || -d] - wyświetl aktualną date"
	echo "[--log || -l] - utwórz 100 plików log"
	echo "[--log || -l] <number> - utwórz x plików log"
	echo "[--help || -h] - wyświetl tą wiadomość"
elif [ $1 = "--init" ] ; then
	git clone https://github.com/baldir0/NarzedziaPracyWBranzyITLab4.git
	PATH=$PATH:$(pwd)
fi
