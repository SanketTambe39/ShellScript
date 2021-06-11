#!/bin/bash

isFulltime=1
isParttime=2

ranCheck=$((RANDOM%3))

echo $ramCheck
if [ $isFulltime -eq $ranCheck ]
then
	echo "Employee fulltime present"
elif [ $isParttime -eq $ranCheck  ]
then
	echo "Employee Halftime present"
else
	echo "Employee Absent"
fi
