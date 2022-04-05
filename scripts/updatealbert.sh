#!/bin/bash

NEWFILE=~/.config/albert/albert.conf
OLDFILE=~/dotfiles/.config/albert/albert.conf


echo "DIFF:"
diff $NEWFILE $OLDFILE
echo "override settings? (y/n)"
read INPUT

if [ $INPUT = "y" ]; then
    cat $NEWFILE > $OLDFILE
    echo "done."
else
    echo "aborted."
fi

NEWWEB=~/.config/albert/org.albert.extension.websearch/engines.json
OLDWEB=~/dotfiles/.config/albert/org.albert.extension.websearch/engines.json

echo "DIFF:"
diff $NEWWEB $OLDWEB
echo "override settings? (y/n)"
read INPUT

if [ $INPUT = "y" ]; then
    cat $NEWWEB > $OLDWEB
    echo "done."
else
    echo "aborted."
fi