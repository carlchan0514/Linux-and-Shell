#!/bin/bash

ls *.sh > ls.log

for i in $(cat ls.log)
	do
		echo $i
	done
rm -rf ls.log
