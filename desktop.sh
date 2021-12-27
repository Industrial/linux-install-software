#!/usr/bin/env bash

. ./lib/packages.sh

echo "> desktop"
packages=(
  otf-font-awesome
  # pipewire
  # alacritty
  # bemenu-wayland
  sway
  waybar
  wl-clipboard # disable when using X
  xdg-desktop-portal-wlr
  # clipman # interferes with tmux-yank!
  wmctrl
  chrome-gnome-shell
)
conditionally_install_packages $packages

systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
systemctl --user enable --now pipewire.socket
systemctl --user enable --now pipewire-media-session.service
