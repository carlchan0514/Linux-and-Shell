#!/bin/bash

date=$(date +%y%m%d)
size=$(du -sh ~/src)

if [ -d ~/dbback ]
	then
		echo 11111
		echo "Date is : $date" > ~/dbback/db.txt
		echo "size is : $size" >> ~/dbback/db.txt
		cd ~/dbback
		signal=$(tar -zcPf src_$date.tar.gz ~/src db.txt &>/dev/null)
	else
		echo 22222
		mkdir ~/dbback
		echo "Date is : $date" > ~/dbback/db.txt
		echo "size is : $size" >> ~/dbback/db.txt
                cd ~/dbback
                signal=$(tar -zcPf src_$date.tar.gz ~/src db.txt &>/dev/null)
fi

if [ signal==0 ]
	then
		echo 33333
		rm -rf ~/dbback/db.txt
fi
