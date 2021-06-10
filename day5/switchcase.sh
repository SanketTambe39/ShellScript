#!/bin/bash

for filename in $(ls)
do
	ext=${filename##*\.}
	case $ext in
		java) echo "$filename : Java File"
			;;
		sh) echo "$filename : Shell File"
			;;
		*) echo "$filename : not processed"
			;;
	esac
done
