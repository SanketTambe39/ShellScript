#!/bin/bash

read -p " Enter number which you want to check :: " digit

if [ $digit -eq 1 ]
then
	echo "unit"
elif [ $digit -eq 10 ]
then
	echo "ten"
elif [ $digit -eq 100 ]
then
        echo "hundred"
elif [ $digit -eq 1000 ]
then
        echo "Thousands"
elif [ $digit -eq 10000 ]
then
        echo "Ten Thousands"
elif [ $digit -eq 100000 ]
then
        echo "Lakhs"
elif [ $digit -eq 1000000 ]
then
        echo "Ten Lakhs"
elif [ $digit -eq 10000000 ]
then
        echo "Crores"
elif [ $digit -eq 100000000 ]
then
        echo "Ten Crores"
elif [ $digit -eq 1000000000 ]
then
        echo "Arab"
else
	echo " More than one Arab "
fi
