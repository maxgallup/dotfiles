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

echo "🟡 Installing nala"
sudo apt install nala
check_exit_status

echo "🟡 Updating"
sudo nala update
check_exit_status

echo "🟡 Upgrading"
sudo nala upgrade -y
check_exit_status

echo "🟡 Installing ansible and stow"
sudo nala install ansible stow -y
check_exit_status

ansible --version
check_exit_status

echo "🟡 Stowing Files"
./scripts/stow-update.sh
check_exit_status

echo "🟡 Running Playbook"
ansible-playbook main.yml -K --ask-vault-pass
check_exit_status



