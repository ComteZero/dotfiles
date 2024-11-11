# My dotfiles

## Installation

Pre-requisites:

- ansible
- git

```sh
git clone git@github.com:ComteZero/dotfiles.git
sudo ansible-playbook dotfiles/install.yml
```

## Apply configuration

```sh
ansible-playbook dotfiles/configure.yml
```

## First tool run

### tmux

Use `C-a I` to install plugins

### neovim

Run `nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'`
