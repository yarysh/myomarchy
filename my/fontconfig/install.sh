#!/bin/bash

sudo pacman -S --noconfirm --needed \
  nwg-look ttf-jetbrains-mono-nerd ttf-liberation \
  fontconfig

mkdir -p ~/.config/fontconfig
cp --backup fonts.conf ~/.config/fontconfig/fonts.conf

fc-cache -fv
