# Dotfiles

## Setup

Clone this repository in your home

```shell
git clone https://github.com/gabbla/dotfiles ~/.dotfiles
```

Link what you need:

```shell
# ZSH
ln -nfs ~/.dotfiles/zsh/zshrc ~/.zshrc
ln -nfs ~/.dotfiles/zsh/zshenv ~/.zshenv

# i3
ln -nfs ~/.dotfiles/i3/config ~/.config/i3

# Neo Vim
ln -nfs ~/.dotfiles/nvim ~/.config/nvim

# TMux
ln -nfs ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

# kitty terminal
ln -nfs ~/.dotfiles/kitty/ ~/.config/kitty

# dunst
ln -nfs ~/.dotfiles/dunst/dunstrc ~/.config/dunst

# polybar
ln -nfs ~/.dotfiles/polybar ~/.config/polybar

# rofi-pass (depends on [pass](https://www.passwordstore.org/) and
[rofi-pass](https://github.com/carnager/rofi-pass)
ln -nfs ~/.dotfiles/rofi-pass/config ~/.config/rofi-pass/config

#git
ln -nfs ~/.dotfiles/git/gitconfig ~/.gitconfig

# TLP (Linux Advanced Power Management)
mv /etc/tlp.conf /etc/tlp.conf.backup # backup the shipped one
ln -ns ~/.dotfiles/tlp.conf /etc

# xbindkeys
ln -ns ~/.dotfiles/xbindkeys ~/.xbindkeys
```

## Dependencise

WIP

- light-locker (xbindkeys)

- [Silicon](https://github.com/Aloxaf/silicon) used by `vim-silicon`
