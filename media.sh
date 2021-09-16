#!/usr/bin/env bash

. ./lib/packages.sh

echo "> media"

echo "> media > install packages"

packages=(
  transmission-gtk
  bookworm
)
conditionally_install_packages $packages
