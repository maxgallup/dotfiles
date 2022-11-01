#!/bin/bash

# code --list-extensions | xargs -L 1 echo code --install-extension

extensions=(
"rust-lang.rust"
"rdnlsmith.linux-themes"
"tomoki1207.pdf"
"ms-vscode-remote.remote-ssh"
"ms-vscode-remote.remote-ssh-edit"
"ms-vsliveshare.vsliveshare"
)

for e in "${extensions[@]}"; do
    code --install-extension $e
done
