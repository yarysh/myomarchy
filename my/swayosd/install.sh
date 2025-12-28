#!/bin/bash

sudo pacman -S --noconfirm --needed \
  swayosd

mkdir -p ~/.config/swayosd/
cp -r --backup configs/* ~/.config/swayosd/
