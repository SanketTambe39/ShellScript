#!/bin/bash

arr=(0, -1, 2, -3, 1)
size=5
flag=0

for ((i=0;i<3;i++))
do
	for ((j=1;j<4;j++))
	do
		for ((k=2;j<5;j++))
		do
			if [ $(($i+$j+$k==0)) ]
			then
				flag=1
			fi
		done
	done
done

if [ $(($flag==1)) ]
then
	echo " Triplet Found. "
fi
