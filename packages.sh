#!/usr/bin/env bash

. ./lib/packages.sh

echo "> packages"

echo "> packages > db"
sudo pacman -Syy --noconfirm \
  1> /dev/null

echo "> packages > update all"
sudo pacman -Su --noconfirm \
  1> /dev/null

echo "> packages > uninstall unneeded"
packages=(
  catfish
)
conditionally_uninstall_packages $packages

echo "> packages > install required"
packages=(
  base-devel
  net-tools
  fakeroot
  git
  yay
)
conditionally_install_packages $packages

echo "> packages > nethogs"
packages=(
  nethogs
)
conditionally_install_packages $packages

sudo setcap "cap_net_admin,cap_net_raw=ep" $(which nethogs)

echo "> packages > actionsflow"
