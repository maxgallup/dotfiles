#!/bin/bash

cd /home/max/dotfiles/gnome-extensions

for dir in * ; do
    newtitle=$(cat "$dir/metadata.json" | grep uuid | cut -d \" -f4)

    mv $dir $newtitle

done

echo done


