#!/bin/bash
echo $1
if [ $1 -lt 1 ]; then
	echo "NUMBER is less than zero"
elif [ $1 -gt 12 ]; then
	echo "NUMBER is more than 12"
else
	for((a=$1 ; a>=1 ; a--));
	do
		for((b=0 ; b<$1-a ; b++))
			do
			echo -ne " "
			done
		for((c=1 ; c<=2*a-1 ; c++))
			do
			echo -ne "*"
			done
			echo
	done
fi
