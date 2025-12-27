#!/bin/bash

sudo pacman -S --noconfirm --needed \
  nwg-look \
  noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra \
  ttf-jetbrains-mono-nerd ttf-liberation \
  fontconfig

mkdir -p ~/.config/fontconfig
cp --backup fonts.conf ~/.config/fontconfig/fonts.conf

fc-cache -fv
