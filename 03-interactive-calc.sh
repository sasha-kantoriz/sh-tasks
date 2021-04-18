#!/bin/bash

interactive_calc()
{
        while read x; do
                e="$i$x"
                i=$(( e ))
        done
}


arg=${1:--}
case $arg in
	-)
		i=0
		interactive_calc
		echo = $i
		;;
	*)
		if [[ ! -f $1 ]]; then
			exit 1
		fi
		lines=`cat $1 | sed -e 's/ //g'`
		for l in $lines; do
			e="$i$l"
			i=$(( e ))
		done
		echo = $i
		;;

esac


