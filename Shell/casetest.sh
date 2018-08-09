#!/bin/bash

echo 'if you want to fly to shanghai, please input "1"'
echo 'if you want to fly to guangzhou, please input "2"'
echo 'if you want to fly to shenzhen, please input "3"'

read -t 30 -p "please choose yes/no:" cho

case "$cho" in
	"1")
		echo "shanghai selected"
		;;
	"2")
		echo "guangzhou selected"
		;;
	"3")
		echo "shenzhen selected"
		;;
	*)
		echo "error 1/2/3"
		;;
esac
