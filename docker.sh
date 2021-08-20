#!/usr/bin/env bash

echo "> docker"

echo "> docker > install packages"
yay -S --noconfirm \
  docker \
  docker-compose \
  1> /dev/null

# TODO: change if required
echo "> docker > user & group"
sudo groupadd docker
sudo usermod -aG docker $USER

# TODO: change if required
echo "> docker > service"
systemctl enable docker \
  1> /dev/null
systemctl start docker \
  1> /dev/null
