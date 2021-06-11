#!/bin/bash

count=0

for i in {0..100}
do
	if [[ $(($i/10)) == $(($i%10)) ]] && [[ $i != 0 ]]
	then
		repArray[ ((count++)) ]=$i
	fi
done

echo "All the values which are repeting are here :: "${repArray[@]}
