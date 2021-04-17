#!/bin/bash

i=0
while read x; do 
	e="$i$x"
       	i=$(( e ))
done

echo $i

