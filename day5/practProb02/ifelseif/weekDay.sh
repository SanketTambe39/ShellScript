#!/bin/bash

read -p "Enter week number to check ( Starts from 0 to 6) ::" week

if [ $week -eq 0 ]
then
	echo "Sunday"
elif [ $week -eq 1 ]
then
	echo "Monday"
elif [ $week -eq 2 ]
then
        echo "Tuesday"
elif [ $week -eq 3 ]
then
        echo "Wednesday"
elif [ $week -eq 4 ]
then
        echo "Thursday"
elif [ $week -eq 5 ]
then
        echo "Friday"
elif [ $week -eq 6 ]
then
        echo "Saturday"
else
	echo "please enter valid number from 0 to 6"
fi
