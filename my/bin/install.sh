#!/bin/bash

sudo pacman -S --noconfirm --needed \
  gum

mkdir -p ~/.local/bin
cp omarchy-launch-or-focus-webapp ~/.local/bin/
cp omarchy-launch-webapp ~/.local/bin/
cp omarchy-webapp-install ~/.local/bin/
cp omarchy-webapp-remove ~/.local/bin/
cp power.sh ~/.local/bin/
