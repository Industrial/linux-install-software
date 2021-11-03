#!/usr/bin/env bash

. ./lib/packages.sh

echo "> development"

echo "> development > install packages"

packages=(
  aws-cli
  aws-sam-cli
  bitwarden
  chromium
  code
  deno
  discord
  element-desktop
  gcc
  gitkraken
  make
  meld
  postgresql
  slack-electron
  st-manjaro
  teams
  zeal

  # Java
  jre11-openjdk-headless
  jre11-openjdk
  jdk11-openjdk
  openjdk11-doc
  openjdk11-src
  maven
)
conditionally_install_packages $packages

# TODO: fix
# echo "> development > install packages > code"
# yay -S --noconfirm \
#   code \
#   code-marketplace \
#   1> /dev/null
