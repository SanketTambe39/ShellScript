#!/bin/bash

for ((n=0;n<10;n++))
do
	rArray[$n]=$(( RANDOM%900+100 ))
done

smax=$(printf '%s\n' "${rArray[@]}" | sort -n | tail -2 | head -1)
smin=$(printf '%s\n' "${rArray[@]}" | sort -n | head -2 | tail -1)

echo "Array is :: "${rArray[@]}
echo "second Maximum number is  = " $smax
echo "second Minumum Number is = " $smin
