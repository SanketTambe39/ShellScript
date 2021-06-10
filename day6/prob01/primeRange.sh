#!/bin/bash

read -p "Enter range from ::" from
read -p "Enter range to ::" to

flag=0

for (( num=$from;num<=$to;num++ ))
do
	flag=1
	for((i=2; i<=num/2; i++))
	do
		if [ $((num%i)) -eq 0 ]
		then
			flag=0
			break
		fi
	done
	if [ $flag -eq 1 ]
	then
		echo $num
	fi
done
