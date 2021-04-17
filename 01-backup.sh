#! /bin/bash

backup_folder=${BACKUP_DIR:-~/backup}
mkdir -p $backup_folder

date_prefix=`date +%Y-%m-%d_%H-%M-%S`

for i in "$@"; do 
	cp -R $i $backup_folder/$date_prefix~`realpath $i | tr "/" "~"` 
done


