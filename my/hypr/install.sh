#!/bin/bash

sudo pacman -S --noconfirm --needed \
  gnome-keyring polkit-gnome \
  bluetui firefox ghostty gnome-disk-utility nautilus uwsm \
  xdg-desktop-portal-gtk xdg-desktop-portal-hyprland \
  hyprland

yay -S --noconfirm --needed 1password-cli 1password-beta

sudo pacman -S --noconfirm --needed minizip && yay -S --noconfirm --needed vicinae-bin

# Copy configuration files
mkdir -p ~/.config/hypr
cp -r --backup configs/* ~/.config/hypr/

# Autostart Hyprland
cat > ~/.zprofile <<EOF
if uwsm check may-start; then
    exec uwsm start hyprland.desktop
fi
EOF

# Prevent systemd-networkd-wait-online timeout on boot
# Otherwise hypr won't start with message: graphical.target is queued for start, waiting for 60s...
sudo systemctl disable systemd-networkd-wait-online.service
sudo systemctl mask systemd-networkd-wait-online.service

# Use Firefox as the default browser
update-desktop-database ~/.local/share/applications
xdg-mime default firefox.desktop x-scheme-handler/http
xdg-mime default firefox.desktop x-scheme-handler/https
