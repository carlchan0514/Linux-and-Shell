#!/bin/bash

port=$(nmap -sT 192.168.8.102 | grep tcp | grep snet | awk '{print $2}')

if [ "$port"=="open" ]
	then
		echo "$(date) fuwu is open!"
	else
		echo "$(date) fuwu is not open!"
fi
