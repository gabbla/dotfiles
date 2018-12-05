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
```
