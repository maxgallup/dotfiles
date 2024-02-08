#!/bin/bash

# mkdir /home/max/.ssh
# mkdir /home/max/.config/Code
# mkdir /home/max/.config/Code/User
# mkdir /home/max/.config/VSCodium
# mkdir /home/max/.config/VSCodium/User
# mkdir /home/max/bin

rm /home/max/.bash_logout
rm /home/max/.bashrc
rm /home/max/.bash_aliases
rm /home/max/.profile
rm /home/max/.ssh/config
rm /home/max/.config/gtk-3.0/bookmarks
rm /home/max/.gitconfig


stow config/ --target=/home/max
stow bin/ --target=/home/max/bin


