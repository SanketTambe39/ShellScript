#!/bin/bash

num1=$(( RANDOM%900+100))
num2=$(( RANDOM%900+100))
num3=$(( RANDOM%900+100))
num4=$(( RANDOM%900+100))
num5=$(( RANDOM%900+100))

echo " num1 " $num1 " num2 " $num2 " num3 " $num3 " num4 " $num4 " num5 " $num5

#max=$num1
#min=$num1

if [[ $num1 -gt $num2 && $num1 -gt $num3 && $num1 -gt $num4 ]]
then
	max=$num1
elif [[ $num2 -gt $num3 && $num2 -gt $num4 ]]
then
        max=$num2
elif [[ $num3 -gt $num4 ]]
then
        max=$num3
else
        max=$num4
fi

if [[ $num1 -lt $num2 && $num1 -lt $num3 && $num1 -lt $num4 ]]
then
        min=$num1
elif [[ $num2 -lt $num3 && $num2 -lt $num4 ]]
then
        min=$num2
elif [[ $num3 -lt $num4 ]]
then
        min=$num3
else

        min=$num5
fi

echo " Maximum is " $max " Minimum is " $min
