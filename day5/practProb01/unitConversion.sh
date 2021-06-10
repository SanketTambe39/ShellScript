#!/bin/bash

oneFt=12

echo "42 in = "$((42/$oneFt))"."$((42%$oneFt))" ft"

w=60
l=40

convo=`awk 'BEGIN {print (60*40/3.281)}'`

echo "Area of rectangular plot is :: $convo"

acres=`awk 'BEGIN {print (731.484/4047)}'`

echo "Total area of 25 such plots in acres is :: $acres "
