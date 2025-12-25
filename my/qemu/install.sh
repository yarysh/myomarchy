#!/bin/bash

sudo pacman -S --noconfirm --needed \
  dnsmasq dmidecode \
  qemu-full libvirt virt-manager

sudo usermod -a -G libvirt $(whoami)

echo 'firewall_backend = "iptables"' | sudo tee -a /etc/libvirt/network.conf

sudo systemctl enable --now libvirtd.service
sudo virsh net-start default
sudo virsh net-autostart default
