#!/bin/bash

if [ $1 = "--date" ] ; then
	echo $(date)
elif [ $1 = "--logs" ] ; then
	iterator=0
	while [ $iterator -lt 100 ] ; do
		echo log$iterator.txt $(date) > log$iterator.txt
		iterator=$[iterator + 1]
	done
fi
