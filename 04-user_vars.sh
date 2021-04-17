#!/bin/bash

for e in `env`; do 
	if [[ $e == *`whoami`* ]]; then 
		echo $e | cut -d= -f1
	fi
done
