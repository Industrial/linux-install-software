#!/usr/bin/env bash

. ./lib/packages.sh

echo "> media"

echo "> media > install packages"

packages=(
  bluez-utils
  bookworm
  pulsemixer
  spotify-tui
  spotifyd
  transmission-gtk
)
conditionally_install_packages $packages
