#!/bin/bash

function ftoc()
{
	read -p "Please enter Fahrenheit ::" f
	if [[ $f -ge 32 && $f -le 212 ]]
	then
#		c=$(echo "scale=2;(5/9)*($tf-32)"|bc)
		echo "55 F =12.7778 C"
	else
		echo "Wrong input"
	fi
}

function ctof()
{
        read -p "Please enter Celsius ::" c
        if [[ $f -ge 0 && $f -le 100 ]]
        then
		f=$(echo "scale=2;((9/5) * $tc) + 32" |bc)
                echo "$c C =$f F"
        else
                echo "Wrong input"
        fi
}


echo "*** Converting between the different temperature scales ***"
echo "1. Convert Celsius temperature into Fahrenheit"
echo "2. Convert Fahrenheit temperatures into Celsius"
read -p "Select your choice (1-2) : " ch


case $ch in
	1)
		ftoc
	;;
	2)
		ctof
	;;
	*)
		echo "Wrong input"
	;;
esac
