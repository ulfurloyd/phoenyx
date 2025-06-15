# phoenyx

## Why I'm back on Arch
Spent close to a year in NixOS. It was honestly a lot of fun, Nix is a cool playground to learn new tools and build a deep configuration. <br><br>
But over time, I've also noticed growing pains that come with using Nix(OS) as your daily driver desktop distro. <br><br>
Issues mainly stemming from it not respecting traditional Linux FHS standards, software needing to be configured in a blend of home-manager <br>
and classic configuration formats, config changes not reflecting until you rebuild your system or HM config, and more. <br><br>
As it turns out, Arch Linux has a way to be enticing enough that you never tyruly escape it :3 <br>

## Ansible
Ansible is a system/configuration management and automation software. I'm working on integrating it into my dotfiles for easy system reproducibility, à la NixOS.

### Features So Far
#### Package Management
Installs required packages
- `pacman` for official Arch packages (via the base role)
- `paru` and 
