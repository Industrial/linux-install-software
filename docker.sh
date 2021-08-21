#!/usr/bin/env bash

. ./lib/packages.sh

echo "> docker"

echo "> docker > install packages"
packages=(
  docker
  docker-compose
)
conditionally_install_packages $packages

# TODO: change if required
echo "> docker > user & group"
if [ ! $(getent group docker) ]; then
  sudo groupadd docker
fi
if [ $(user_in_group $USER docker) -eq 0 ]; then
  sudo usermod -aG docker $USER
fi

# TODO: change if required
echo "> docker > service"
if [ $(systemctl is-enabled docker) != "enabled" ]; then
  systemctl enable docker 1> /dev/null
fi
if [ $(systemctl is-active docker) != "active" ]; then
  systemctl start docker 1> /dev/null
fi
