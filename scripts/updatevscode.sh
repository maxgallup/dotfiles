#!/bin/bash

keybindings=~/.config/Code/User/keybindings.json
settings=~/.config/Code/User/settings.json

saved_keybindings=~/dotfiles/.config/Code/User/keybindings.json
saved_settings=~/dotfiles/.config/Code/User/settings.json


echo "DIFF:"
diff $keybindings $saved_keybindings
echo "override keybindings? (y/n)"
read INPUT

if [ $INPUT = "y" ]; then
    cat $keybindings > $saved_keybindings
    echo "done."
else
    echo "aborted."
fi

echo "DIFF:"
diff $settings $saved_settings
echo "override settings? (y/n)"
read INPUT

if [ $INPUT = "y" ]; then
    cat $settings > $saved_settings
    echo "done."
else
    echo "aborted."
fi
