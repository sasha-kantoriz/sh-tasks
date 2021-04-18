#!/bin/bash

src=`curl --silent $1`


result=`echo $src | egrep -o "href=[\"']mailto:[\.a-zA-Z0-9-]+@[\.a-zA-Z0-9-]+[\"']"`

for email in $result; do
	echo $email | sed -e "s/\"//g" -e "s/'//g" -e "s/href=mailto://"
done | sort
