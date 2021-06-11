#!/bin/bash

read -p "Enter value for n ::" num

result=1
number=2

i=0

while [[ $i -lt $num && $result -lt 256 ]]
do
	result=$(($result*$number))
	echo $result
	i=$(( i+1 ))
done
