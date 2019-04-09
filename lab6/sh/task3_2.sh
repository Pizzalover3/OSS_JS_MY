#!/bin/bash
function fib(){
	#if [ $1 -eq 0 ]; then echo 0
	if (( $1 <= 1 ))
		then echo 0
	#elif [ $1 -eq 1 ]; then echo 1
	elif (( $1 == 2 ))
		then echo 1
	#else echo $[`fib $[$1-2]` + `fib $[$-1]` ]
	else
		echo $(( $(fib $(($1 - 1)) ) + $(fib $(($1 - 2)) ) ))
	fi
}
for ((i=1 ; i <= $1+1 ; i++));
	do
	fib i
	done
