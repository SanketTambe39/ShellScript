#!/bin/bash

echo Enter a number
read n
i=1
sum=0
for (( i=1;i<=n;i++ ))
do
	sum=`awk 'BEGIN{ printf("%0.4f",'$sum'+1/'$i')}'`
done

echo $sum

