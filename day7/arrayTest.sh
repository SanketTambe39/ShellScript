#!/bin/bash

cnt=0

fruits[ ((cnt++)) ]="banana"
fruits[ ((cnt++)) ]="apple"
fruits[ ((cnt++)) ]="pineapple"
fruits[ ((cnt++)) ]="orange"

echo "keys of array :: "${!fruits[@]}
echo "value of array :: " ${fruits[@]}
#for a in ${fruits[@]}
#do
#	echo $a
#done
