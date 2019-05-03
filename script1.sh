#!/bin/bash
limite=1000
nbr=0
try=0
random=$(( $$ % $limite))

while [ "$nbr" -ne $random ]; do
	echo -n "Devinez?" ; read nbr
	if [ "$nbr" -lt $random ] ; then
		echo "C'est plus grand!"
	elif [ "$nbr" -gt $random ] ; then
		echo "C'est plus petit!"
	fi
	try=$(( $try + 1 ))
done

echo "Vous avez deviné $random en $try coups"

exit 0

