#!/bin/bash

read -p "Enter week number to check ( Starts from 0 to 6) ::" week

case $week in
	0)
		echo "Sunday"
	;;
	1)
                echo "Monday"
        ;;
        2)
                echo "Tuesday"
        ;;
        3)
                echo "Wednesday"
        ;;
        4)
                echo "Thursday"
        ;;
        5)
                echo "Friday"
        ;;
        6)
                echo "Saturday"
        ;;
        *)
                echo "Please enter valid number from 0 to 6"
        ;;
esac
