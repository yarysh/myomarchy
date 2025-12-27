#!/bin/bash

sudo pacman -S --noconfirm --needed \
  mako

mkdir -p ~/.config/mako
cp --backup configs/core.ini ~/.config/mako/config
