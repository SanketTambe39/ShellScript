#!/bin/bash

declare -A example

for(( i=0; i<3;i++ ))
do
	read -p "Enter key :: " skey
	read -p "Enter value :: " sval

	example[$skey]=$sval
done


for key in ${!example[@]}
do
        echo $key=${example[$key]}
done
