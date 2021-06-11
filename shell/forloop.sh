#!/bin/bash

for filename in `ls *.txt`
do
	foldername=`echo $filename |awk -F. '{print $1}'`
	if [ -d $foldername ]
	then
		rm -R $foldername
	fi
	echo "$foldername is created."
	mkdir $foldername
	cp $filename $foldername
done
