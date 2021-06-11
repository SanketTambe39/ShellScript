#!/bin/bash

declare -A Month
jan=feb=mar=apr=may=jun=jul=aug=sep=oct=nov=dec=0
for(( i-0;i<50;i++ ))
do
	birthMonth=$((RANDOM%12+1))
	case $birthMonth in
		1)
			jan=$((jan+1))
			Month['jan']=$jan
		;;
                2)
                        feb=$((feb+1))
                        Month['feb']=$feb
                ;;
                3)
                        mar=$((mar+1))
                        Month['mar']=$mar
                ;;
                4)
                        apr=$((apr+1))
                        Month['apr']=$apr
                ;;
                5)
                        may=$((may+1))
                        Month['may']=$may
                ;;
                6)
                        jun=$((jun+1))
                        Month['jun']=$jun
                ;;
                7)
                        jul=$((jul+1))
                        Month['jul']=$jul
                ;;
                8)
                        aug=$((aug+1))
                        Month['aug']=$aug
                ;;
                9)
                        sep=$((sep+1))
                        Month['sep']=$sep
                ;;
                10)
                        oct=$((oct+1))
                        Month['oct']=$oct
                ;;
                11)
                        nov=$((nov+1))
                        Month['nov']=$nov
                ;;
                12)
                        dec=$((dec+1))
                        Month['dec']=$dec
                ;;

		*)
			echo "System is not working properly"
		;;
	esac
done

for i in ${!Month[@]}
do
	echo ${Month[$i]}" People born in "$i
done
