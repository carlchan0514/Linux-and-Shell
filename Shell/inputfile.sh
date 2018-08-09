#!/bin/bash

read -p "please input a file name!" file

if [ -z $file ]
	then
		echo "error please input a filename"
		exit 1
elif [ ! -e $file ]
	then
		echo "please input a correct filename"
		exit 2
elif [ -d $file ]
	then
		echo "filename is a directory"
		exit 3
elif [ -f $file ]
	then
		echo "correct filename"
		exit 4
else
		echo "file is an other filename"
		exit 5
fi
