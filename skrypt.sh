#!/bin/bash

utworzPliki ()
{
	iterator=0
	max=100
	nazwaPliku=$1
	if [ ! -z $2 ] ; then
		max=$2
	fi
	
	while [ $iterator -lt $max ] ; do
		mkdir $nazwaPliku$iterator
		echo $nazwaPliku$iterator.txt $0 $(date) > $nazwaPliku$iterator/$nazwaPliku$iterator.txt
		iterator=$[iterator + 1]
	done
}

if [ $1 = "--date" ] || [ $1 = "-d" ] ; then
	echo $(date)
elif [ $1 = "--logs" ] || [ $1 = "-l" ] ; then
	utworzPliki "log" $2
elif [ $1 = "--error" ] || [ $1 = "-e" ] ; then
	utworzPliki "error" $2
elif [ $1 = "--help" ] || [ $1 = "-h" ] ; then
	echo "[--date || -d] - wyświetl aktualną date"
	echo "[--log || -l] - utwórz 100 plików log"
	echo "[--log || -l] <number> - utwórz x plików log"
	echo "[--error || -e] - utwórz 100 plików error"
	echo "[--error || -e] <number> - utwórz x plików error"
	echo "[--init] - klonuje repozytorium ze skryptem, ustawia zmienną PATH"
	echo "[--help || -h] - wyświetl tą wiadomość"
elif [ $1 = "--init" ] ; then
	git clone https://github.com/baldir0/NarzedziaPracyWBranzyITLab4.git
	PATH=$PATH:$(pwd)
fi
