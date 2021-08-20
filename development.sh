#!/usr/bin/env bash

echo "> development"

echo "> development > install packages"

echo "> development > install packages > meld"
yay -S --noconfirm \
  meld \
  1> /dev/null

echo "> development > install packages > chromium"
yay -S --noconfirm \
  chromium \
  1> /dev/null

# TODO: fix
# echo "> development > install packages > code"
# yay -S --noconfirm \
#   code \
#   code-marketplace \
#   1> /dev/null

echo "> development > install packages > teams"
yay -S --noconfirm \
  teams \
  1> /dev/null

echo "> development > install packages > java"
yay -S --noconfirm \
  jre11-openjdk-headless \
  jre11-openjdk \
  jdk11-openjdk \
  openjdk11-doc \
  openjdk11-src \
  maven \
  1> /dev/null

echo "> development > install packages > aws"
yay -S --noconfirm \
  aws-cli \
  1> /dev/null
