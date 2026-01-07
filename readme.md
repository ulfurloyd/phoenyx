<h2 align="center">phoenyx </h2>

<h2 align="center">
    <img src="./res/ulfurloyd.jpg" width="240" alt="ulfurloyd" /> <br />
    <a href="https://github.com/ulfurloyd/phoenyx/actions/workflows/ansible-check.yml"><img src="https://github.com/ulfurloyd/phoenyx/actions/workflows/ansible-check.yml/badge.svg" alt="Ansible Lint & Dry-Run" /> </a>
</h2>

![screenshot](./res/screenshot.png)

## Why I'm back on Arch
Spent close to a year in NixOS. It was honestly a lot of fun, Nix is a cool playground to learn new tools and build a deep configuration. <br><br>
But over time, I've also noticed growing pains that come with using Nix(OS) as your daily driver desktop distro. <br><br>
Issues mainly stemming from it not respecting traditional Linux FHS standards, software needing to be configured in a blend of home-manager <br>
and classic configuration formats, config changes not reflecting until you rebuild your system or HM config, and more. <br><br>
As it turns out, Arch Linux has a way to be enticing enough that you never truly escape it :3 <br>

# Ansible

~being rewritten~

## values.yml

this is temporary just to remind myself of how it's supposed to look

```yaml
# ansible/values.yml
  user: "wolf"
  home: "/home/wolf"

  git_user:
    name: "ulfurloyd"
    email: "eklavyasood@gmail.com"

  system:
    use_https_git: true
    use_aur: true

  ssh_key:
    id_ed25519: !vault |
              $ANSIBLE_VAULT;1.1;AES256
              # rest of the key
```
