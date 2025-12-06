#!/bin/bash

sudo pacman -S --noconfirm --needed \
  bluetui firefox ghostty uwsm \
  hyprland

yay -S --noconfirm --needed 1password-beta

sudo pacman -S --noconfirm --needed minizip && yay -S --noconfirm --needed vicinae-bin

# Copy configuration files
mkdir -p ~/.config/hypr
cp -r --backup configs/* ~/.config/hypr/
