#!/bin/bash

sudo pacman -S --noconfirm --needed \
  fzf bat xdg-utils imagemagick mise zoxide \
  zsh zsh-syntax-highlighting zsh-autosuggestions

# Copy configuration files
mkdir -p ~/.zsh
cp --backup configs/zshrc ~/.zshrc
cp --backup configs/aliases configs/envs configs/functions configs/init configs/prompt configs/rc configs/shell ~/.zsh/

# Set ZSH as default shell
chsh -s /usr/bin/zsh
