#!/bin/bash
declare -A person

person[name]="Sanket"
person[city]="Nashik"
person[state]="Maharashtra"

echo ${person[@]}

echo ${person[city]}

echo ${!person[@]}

echo ${#person[@]}

for key in ${!person[@]}
do
	echo $key=${person[$key]}
done
