#!/bin/bash

backup(){
	string=$(getent group $group | cut -d ":" -f 4) 
	IFS=',' read -r -a members <<< "$string" 
	date=(`date +%d-%m-%Y`)
	for ((i=0; i <  ${#members[@]}; i++ ))
	do
		sudo tar -cvzf backup-${members[i]}-$date.tar.gz /home/"${members[i]}"
	done
	echo "Backup complete for: ${members[@]}"
}

group=$1

if [ $# -eq 1 ]
then
	backup
else
	echo "Type in your group so a a backup can be done for all members' files"
	read group
	backup
fi
