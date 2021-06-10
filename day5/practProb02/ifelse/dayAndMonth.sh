#!/bin/bash

March="03-20"
June="07-20"

TODAY=`date +%m-%d`
echo $TODAY
echo $March

if [[ $March < $TODAY && $June > $TODAY ]]
then
	echo "True"
else
	echo "False"
fi
#echo $today
