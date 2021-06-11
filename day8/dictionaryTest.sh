#!/bin/bash


declare -A sound

sound[dog]="bark"
sound[cow]="moo"
sound[bird]="tweet"
sound[wolf]="howl"

echo " keys of sound dictionary " ${!sound[@]}
echo " All values from sound dictionary " ${sound[@]}
unset sound[cow]
echo ${!sound[@]}
echo $sound

for key in ${!sound[@]}
do
	echo "sound of "$key" is " ${sound[$key]}
done
