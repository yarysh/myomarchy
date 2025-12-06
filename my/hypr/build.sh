#!/bin/bash

cp ../../omarchy/config/hypr/hyprland.conf configs/hyprland.conf && patch configs/hyprland.conf patches/hyprland.patch

cp ../../omarchy/default/hypr/envs.conf configs/default/envs.conf && patch configs/default/envs.conf patches/default/envs.patch

cp ../../omarchy/default/hypr/looknfeel.conf configs/default/looknfeel.conf

cp ../../omarchy/default/hypr/input.conf configs/default/input.conf

cp ../../omarchy/default/hypr/windows.conf configs/default/windows.conf && patch configs/default/windows.conf patches/default/windows.patch

cp ../../omarchy/default/hypr/apps.conf configs/default/apps.conf && patch configs/default/apps.conf patches/default/apps.patch
cp ../../omarchy/default/hypr/apps/1password.conf configs/default/apps/
cp ../../omarchy/default/hypr/apps/browser.conf configs/default/apps/
cp ../../omarchy/default/hypr/apps/jetbrains.conf configs/default/apps/
cp ../../omarchy/default/hypr/apps/system.conf configs/default/apps/
cp ../../omarchy/default/hypr/apps/terminals.conf configs/default/apps/
cp ../../omarchy/default/hypr/apps/webcam-overlay.conf configs/default/apps/

cp ../../omarchy/config/hypr/monitors.conf configs/ && patch configs/monitors.conf patches/monitors.patch
cp ../../omarchy/config/hypr/input.conf configs/
