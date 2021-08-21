#!/usr/bin/env bash

. ./lib/packages.sh

echo "> development"

echo "> development > install packages"

echo "> development > install packages > meld"
packages=(
  meld
)
conditionally_install_packages $packages

echo "> development > install packages > chromium"
packages=(
  chromium
)
conditionally_install_packages $packages

echo "> development > install packages > element-desktop"
packages=(
  element-desktop
)
conditionally_install_packages $packages

# TODO: fix
# echo "> development > install packages > code"
# yay -S --noconfirm \
#   code \
#   code-marketplace \
#   1> /dev/null

echo "> development > install packages > teams"
packages=(
  teams
)
conditionally_install_packages $packages

echo "> development > install packages > java"
packages=(
  jre11-openjdk-headless
  jre11-openjdk
  jdk11-openjdk
  openjdk11-doc
  openjdk11-src
  maven
)
conditionally_install_packages $packages

echo "> development > install packages > aws"
packages=(
  aws-cli
)
conditionally_install_packages $packages

echo "> development > install packages > postgresql"
packages=(
  postgresql
)
conditionally_install_packages $packages
