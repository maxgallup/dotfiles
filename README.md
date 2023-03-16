# dotfiles

I use Ansible to manage and deploy any configurations or customizations to my development environment.
With this playbook and a clean install of [PopOS 20.04](https://pop.system76.com/) I can have the highly customized configuration in minutes.

# TODO
- [ ] iron-out install process - test on virtual machines
- [ ] add support for fedora
- [ ] remote wget commands replace with ansible alternative
- [ ] move `~/bin` to `~/.local/bin`


# NIX Migration:
### Applications:
- [ ] Espanso - `nix-env -iA nixpkgs.espanso`
- [ ] VSCode - `nix-env -iA nixpkgs.vscode-fhs`
- [ ] Brave - `nix-env -iA nixpkgs.brave`
- [ ] Discord - `nix-env -iA nixpkgs.discord`
- [ ] Input-remapper - `nix-env -iA nixpkgs.input-remapper`
- [ ] Albert - `nix-env -iA nixpkgs.albert`


### CLI-Tools:
- [ ] exa - `nix-env -iA nixpkgs.exa`

### Languages:
- [ ] Rust - `nix-env -iA nixpkgs.rustup`
- [ ] Go - `nix-env -iA nixpkgs.go`



