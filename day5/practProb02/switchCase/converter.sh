#!/bin/bash

echo "Following are some operation we do ::"
echo " 1) Feet to Inch "
echo " 2) Inch to Feet "
echo " 3) Feet to Meter "
echo " 4) Meter to Feet "

read -p " Please choose which opreation you want to perform :: " choice

case $choice in
	1)
		read -p " please enter feet you want to check :: " feet
		inches=$(($feet*12))
		echo "By Converting "$feet "feet to Inches we got "$inches" Inches "
	;;
        2)
                read -p " please enter inch you want to check :: " inch
                feet=$(($inch/12))
		feet2=$(($inch%12))
                echo "By Converting "$inch "inch to Feet we got "$feet"."$feet2" Feet"
        ;;
        3)
                read -p " please enter Feet you want to check :: " feet
                awk -v givenfeet=$feet -v onemeter=3.281 'BEGIN{ finalmeter=(givenfeet/onemeter); print " by converting" givenfeet " to meter we got " finalmeter};'
        ;;
        4)
                read -p " please enter Meter you want to check :: " meter
                awk -v givenmeter=$meter -v onefeet=3.281 'BEGIN{ finalfeet=(givenmeter*onefeet); print " by converting " givenmeter " to feet we got " finalfeet};'
        ;;
	*)
		echo "Invalid selection"
	;;
esac
