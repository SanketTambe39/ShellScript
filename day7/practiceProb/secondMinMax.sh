#!/bin/bash

for ((n=0;n<10;n++))
do
	rArray[$n]=$(( RANDOM%900+100 ))
done

min=max=${rArray[0]}
smin=smax='unset'

for((i=1; i < 10 ; i++))
do
	if [[ ${rArray[i]} > $max ]]
	then
		smax=$max
		max=${rArray[i]}
	elif (( ${rArray[i]} != $max )) && { [[ "$smax" = "unset" ]] || [[ ${rArray[i]} > $smax ]]; }
	then
		smax=${rArray[i]}
	fi

	if [[ ${rArray[i]} < $min ]]
	then
		smin=$min
		min=${rArray[i]}
	elif (( ${rArray[i]} != $min )) && { [[ "$smin" = "unset" ]] || [[ ${rArray[i]} < $smin ]]; }
	then
		smin=${rArray[i]}
	fi



done

echo "Array is :: "${rArray[@]}
echo "second Maximum number is  = " $smax
echo "second Minumum Number is = " $smin
