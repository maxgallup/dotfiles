#!/bin/bash

cd $HOME/dotfiles/config_misc/
dconf dump / > dconf-settings.temp
echo "DIFF:"
diff dconf-settings.temp dconf-settings
echo "override settings? (y/n)"
read INPUT

if [ $INPUT = "y" ]; then
    cat dconf-settings.temp > dconf-settings
    echo "done."
else
    echo "aborted."
fi

