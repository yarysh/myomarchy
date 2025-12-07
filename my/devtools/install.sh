#!/bin/bash

sudo pacman -S --noconfirm --needed \
  neovim
  usage mise \
  tldr \
  docker docker-buildx docker-compose \
  go

# Start Docker automatically
sudo systemctl enable docker

# Give this user privileged Docker access
sudo usermod -aG docker $(whoami)
