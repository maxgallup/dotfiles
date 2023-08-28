#!/bin/bash

rm /home/max/.bash_logout
rm /home/max/.bashrc
rm /home/max/.bash_aliases
rm /home/max/.profile
rm /home/max/.ssh/config
rm /home/max/.config/gtk-3.0/bookmarks
rm /home/max/.gitconfig

stow config/ --target=/home/max

shopt -s dotglob
rm /home/max/bin/*
stow bin/ --target=/home/max/bin


