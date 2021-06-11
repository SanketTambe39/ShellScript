#!/bin/bash

read -p "Enter number for power of two ::" num

number=2
result=1

for ((i=1;i<=num;i++))
do
	result=$(($result*$number))
	echo $result
done
