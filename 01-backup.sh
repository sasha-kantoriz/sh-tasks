#! /bin/bash

backup_folder=${BACKUP_DIR:-~/backup}
mkdir -p $backup_folder

date_prefix=`date +%Y-%m-%d_%H-%M-%S`

for i in "$@"; do 
	dest=$backup_folder/$date_prefix~`realpath $i | tr "/" "~"`
	cp -R $i $dest
	echo $dest
done


