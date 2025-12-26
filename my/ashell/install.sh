#!/bin/bash

sudo pacman -S --noconfirm --needed \
  ttf-jetbrains-mono-nerd \
  iwd networkmanager
sudo systemctl enable --now iwd.service
sudo systemctl enable --now NetworkManager.service

yay -S --noconfirm --needed \
  ashell

mkdir -p ~/.config/ashell/
cp --backup config.toml ~/.config/ashell/
