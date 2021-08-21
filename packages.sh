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
  binutils
  # list all packages in group, expanding it into this array
  $(pacman -Qqg base-devel)
  net-tools
  fakeroot
  git
  yay
)
conditionally_install_packages $packages