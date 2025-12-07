#!/bin/bash

sudo pacman -S --noconfirm --needed \
  openssh \
  man-db \
  git

# Install yay
sudo pacman -Sy --needed --noconfirm base-devel && \
cd /tmp && \
git clone https://aur.archlinux.org/yay-bin.git && \
cd yay-bin && \
makepkg -si --noconfirm && \
cd -  && \
rm -rf yay-bin && \
cd ~

# Enable ssh server
sudo systemctl enable sshd --now

# Configure git username and email
echo -n "Git user name: "
read -r git_user_name
git config --global user.name "$git_user_name"
echo -n "Git user email: "
read -r git_user_email
git config --global user.email "$git_user_email"
