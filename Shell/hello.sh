#!/bin/bash
# Hello World!
# Author:chendong (E-mail:chendong@roadstar.ai)

echo "Hello World"

rate=$(df -h | grep "sda3" | awk '{print $5}' | cut -d '%' -f 1)
echo $rate
if [ $rate -gt 50  ]
	then
		echo "warning! sda3 use is $rate%, great than 50%"
fi
