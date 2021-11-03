#!/usr/bin/env bash

. ./lib/packages.sh

echo "> packages"

echo "> packages > update all"
sudo pacman -Syyu --noconfirm \
  1> /dev/null

echo "> packages > uninstall unneeded"
packages=(
  catfish
)
conditionally_uninstall_packages $packages

# TODO: when required
echo "> packages > install required"
packages=(
  base-devel
  net-tools
  fakeroot
  git
  yay
)
conditionally_install_packages $packages

echo "> packages > desktop"
packages=(
  clipman
  otf-font-awesome
  pipewire
  vit
  # alacritty
  # bemenu-wayland
  # sway
  # waybar
  # wl-clipboard # disable when using X
  # xdg-desktop-portal-wlr
  wmctrl
)
conditionally_install_packages $packages

systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
systemctl --user enable --now pipewire.socket
systemctl --user enable --now pipewire-media-session.service

echo "> packages > nethogs"
packages=(
  nethogs
)
conditionally_install_packages $packages

sudo setcap "cap_net_admin,cap_net_raw=ep" $(which nethogs)
