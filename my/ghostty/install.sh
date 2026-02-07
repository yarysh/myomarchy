#!/bin/bash

sudo pacman -S --noconfirm --needed \
  ghostty

mkdir -p ~/.config/ghostty
cp -r --backup configs/* ~/.config/ghostty/

xdg-mime default com.mitchellh.ghostty.desktop x-scheme-handler/terminal
