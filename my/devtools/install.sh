#!/bin/bash

sudo pacman -S --noconfirm --needed \
  usage mise \
  docker docker-buildx docker-compose

# Start Docker automatically
sudo systemctl enable docker

# Give this user privileged Docker access
sudo usermod -aG docker $(whoami)
