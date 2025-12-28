#!/bin/bash

sudo pacman -S --noconfirm --needed \
  ghostty

mkdir -p ~/.config/ghostty
cp --backup backgrounds/* ~/.config/waypaper/backgrounds/

cp --backup config.ini ~/.config/waypaper/config.ini

xdg-mime default com.mitchellh.ghostty.desktop x-scheme-handler/terminal
