#!/bin/bash

check_exit_status() {
	if [ $? -eq 0 ]
	then
		echo
		echo "✅ Success"
		echo
	else
		echo
		echo "❌ Process Failed!"
		echo
		
		read -p "The last command exited with an error. Exit script? (yes/no) " answer

		if [ "$answer" == "yes" ]
		then
			exit 1
		fi
	fi
}

echo "🟡 Updating and Upgrading"
sudo apt update
check_exit_status

sudo apt upgrade -y
check_exit_status


echo "🟡 Installing pip"
sudo apt install python3-pip -y
check_exit_status

echo "🟡 Installing ansible"
python3 -m pip install --user ansible
check_exit_status


