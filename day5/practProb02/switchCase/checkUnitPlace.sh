#!/bin/bash

read -p " Enter number which you want to check :: " digit

case $digit in
	1)
		echo "Unit"
	;;
	10)
		echo "Ten"
	;;
	100)
                echo "Hundred"
        ;;
        1000)
                echo "Thousands"
        ;;

        10000)
                echo "Ten Thousands"
        ;;
        100000)
                echo "Lakh"
        ;;
        1000000)
                echo "Ten Lakh"
        ;;
	10000000)
		echo "crores"
	;;
	100000000)
		echo "ten crores"
	;;
	1000000000)
		echo "Arab"
	;;
	*)
		echo "More than one Arab"
	;;
esac
