#!/bin/bash

number1=16
number2=55
number3=27

opration1=$(($number1+$number2*$number3))
echo $opration1
opration2=$(($number3+$number1/$number2))
echo $opration2
opration3=$(($number1%$number2+$number3))
echo $opration3
opration4=$(($number1*$number2+$number3))
echo $opration4

if [[ $opration1 -ge $opration2 && $opration1 -ge $opration3
	&& $opration1 -ge $opration4 ]]
then
	echo $opration1 " is maximum "
elif [[ $opration2 -ge $opration1 && $opration2 -ge $opration3
        && $opration2 -ge $opration4 ]]
then
        echo $opration2 " is maximum "
elif [[ $opration3 -ge $opration1 && $opration3 -ge $opration2
        && $opration3 -ge $opration4 ]]
then
        echo $opration3 " is maximum "
elif [[ $opration4 -ge $opration1 && $opration4 -ge $opration2
        && $opration4 -ge $opration3 ]]
then
        echo $opration4 " is maximum "
fi

if [[ $opration1 -le $opration2 && $opration1 -le $opration3
        && $opration1 -le $opration4 ]]
then
        echo $opration1 " is minimum "
elif [[ $opration2 -le $opration1 && $opration2 -le $opration3
        && $opration2 -le $opration4 ]]
then
        echo $opration2 " is minimum "
elif [[ $opration3 -le $opration1 && $opration3 -le $opration2
        && $opration3 -le $opration4 ]]
then
        echo $opration3 " is minimum "
elif [[ $opration4 -le $opration1 && $opration4 -le $opration2
        && $opration4 -le $opration3 ]]
then
        echo $opration4 " is minimum "
fi
