#!/bin/bash

sudo pacman -S --noconfirm --needed \
  hyprpaper

yay -S --noconfirm --needed \
  waypaper

mkdir -p ~/.config/waypaper/backgrounds
cp --backup backgrounds/* ~/.config/waypaper/backgrounds/

cp --backup config.ini ~/.config/waypaper/config.ini