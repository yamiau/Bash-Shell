#!/bin/bash

menu(){
	echo
	echo "Select your operation:"
	echo "1) Create a new directory"
	echo "2) Erase a directory"
	echo "3) Enable read/write for a file or directory"
	echo "4) Do a personal files backup"
	echo "5) Erase your temporary files"
	echo "6) Exit"

	get_input
}

get_input(){
	read option

	while ! [ $option = 6 ]
	do
		filter
	done
}

filter(){
	if [ $option = 1 ]
	then
		create_dir
	fi

	if [ $option = 2 ]
	then
		delete_dir
	fi

	if [ $option = 3 ]
	then
		enable_rw
	fi

	if [ $option = 4 ]
	then
		backup
	fi

	if [ $option = 5 ]
	then
		clean_tmp
	fi

	menu
}

create_dir(){
	echo "Type in the name of your new directory"
	read dir
	mkdir $dir
	echo "Your directory '$dir' has been created successfully"
}

delete_dir(){
	echo "Type in the name of your the directory to be erased"
	read dir
	rm -r $dir
	echo "Your directory '$dir' has been removed successfully"
}

enable_rw(){
	echo "Type in the name of file or directory to be enabled"
	read file
	chmod u+rw $file
	if [ -d "$file" ]
	then
		echo "READ/WRITE has been enabled in your directory $file"
		ls -l $file
	else
		echo "READ/WRITE has been enabled in your file $file"
		ls -l $file
	fi
}

backup(){
	user=`whoami`
	echo "All files under '$user' are being compressed and sent to /home"
	tar -zcvf /home/personal_backup.tar.gz /home/aluno
	echo "Done!"
}

clean_tmp(){
	echo "Do you want a Simple clanse (S) or a Hard cleanse (H)?"
	read response
	if [ $response = "S" ]
	then
		rm -r /tmp
	else 
		if [ $response = "H" ]
		then	
			echo "Hard-erasing /tmp may cause problems to your computer. Proceed (Y/N) ?"
			read response
			if [ $response = Y ]
			then
				sudo rm -r /tmp
			else 
				echo "The cleansing of temporary files has been cancelled"
				return
			fi
		else
			echo "Invalid option"
			clean_tmp
		fi
	fi
	echo "All files and directories have been erased from /tmp"
}

menu