#!/bin/bash

debug() {
	echo "🟡 $1"
}

success() {
	echo "✅ $1"
}

error() {
	echo ; echo "❌ $1" ; echo ; exit 1
}


if [ -n "$(command -v dnf)" ] ; then
	debug "Detected a Redhat based system"
	PACKAGE_MANAGER="dnf"
	sudo $PACKAGE_MANAGER install python3 -y
elif [ -n "$(command -v apt-get)" ] ; then
	debug "Detected a Debian based system"
	PACKAGE_MANAGER="apt"
	sudo $PACKAGE_MANAGER install python3-pip
else
	error "Couldn't find dnf or apt package managers"
fi


debug "Updating"
sudo $PACKAGE_MANAGER update -y

debug "Upgrading"
sudo $PACKAGE_MANAGER upgrade -y

debug "Install ansible via pip"
python3 -m pip install --user ansible

debug "Upgrading ansible via pip"
python3 -m pip install --upgrade --user ansible


debug "Installing ansible collections"
ansible-galaxy collection install -f community.general



debug "Starting Playbook"
ansible-playbook main.yaml --ask-vault-pass -K

success "Done"




























# check_exit_status() {
# 	if [ $? -eq 0 ]
# 	then
# 		echo
# 		echo "✅ Success"
# 		echo
# 	else
# 		echo
# 		echo "❌ Process Failed!"
# 		echo
		
# 		read -p "The last command exited with an error. Exit script? (yes/no) " answer

# 		if [ "$answer" == "yes" ]
# 		then
# 			exit 1
# 		fi
# 	fi
# }

# echo "🟡 Updating"
# sudo apt update
# check_exit_status

# echo "🟡 Upgrading"
# sudo apt upgrade -y
# check_exit_status

# echo "🟡 Installing ansible and stow"
# sudo apt install ansible stow -y
# check_exit_status

# ansible --version
# check_exit_status

# echo "🟡 Stowing Files"
# ./scripts/stow-update.sh
# check_exit_status

# echo "🟡 Running Playbook"
# ansible-playbook main.yml -K --ask-vault-pass
# check_exit_status
