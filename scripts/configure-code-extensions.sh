#!/bin/bash

# code --list-extensions | xargs -L 1 echo code --install-extension

extensions=(
"akamud.vscode-theme-onelight"
"ms-vscode-remote.remote-ssh"
"ms-vscode-remote.remote-ssh-edit"
"ms-vscode-remote.remote-containers"
"ms-vsliveshare.vsliveshare"
"rdnlsmith.linux-themes"
"Jeraldson.vscode-rusty-onedark"
"NathanBarry.rust-gruvbox"
"tamasfe.even-better-toml"
"nvarner.typst-lsp"
"rust-lang.rust-analyzer"
"streetsidesoftware.code-spell-checker"
"tomoki1207.pdf"
)

for e in "${extensions[@]}"; do
    code --install-extension $e
done


# extensions=(
# "akamud.vscode-theme-onelight"
# "Jeraldson.vscode-rusty-onedark"
# "NathanBarry.rust-gruvbox"
# "tamasfe.even-better-toml"
# "nvarner.typst-lsp"
# "rust-lang.rust-analyzer"
# "golang.go"
# "streetsidesoftware.code-spell-checker"
# "tomoki1207.pdf"
# "znck.grammarly"
# )

# for e in "${extensions[@]}"; do
#     codium --install-extension $e
# done
