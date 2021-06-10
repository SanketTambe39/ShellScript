#!/bin/bash

countH=0
countT=0

while [[ $countH -lt 11 && $countT -lt 11 ]]
do
	flip=$((RANDOM%2))
	if [[ $flip -eq 0 ]]
	then
		countH=$((countH+1))
	else
		countT=$((countT+1))
	fi
done

echo "Head got "$countH" Coins"
echo "Tails got "$countT " Coins "
