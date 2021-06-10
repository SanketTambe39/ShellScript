#!/bin/bash

amount=100
win=0
bet=0

while [[ $amount -lt 200 || $amount -eq 0 ]]
do
	spin=$((RANDOM%2))
	bet=$((bet+1))
	if [[ $spin -eq 0 ]]
	then
		amount=$((amount+1))
		win=$((win+1))
	else
		amount=$((amount-1))
	fi
done

echo "So finnally you get "$amount" by "$win "wins in "$bet" bets. "
