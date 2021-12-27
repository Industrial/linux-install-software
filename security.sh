#!/usr/bin/env bash

. ./lib/packages.sh

echo "> security"

echo "> security > firewall"
packages=(
  ufw
  gufw
)
conditionally_install_packages $packages
sudo ufw enable

# TODO: configure snort
echo "> security > intrusion prevention system"
packages=(
  snort-nfqueue
)
conditionally_install_packages $packages

echo "> security > vpn"
packages=(
  nordvpn-bin
)
conditionally_install_packages $packages

# Be sure to log in first
sudo nordvpn set ipv6 true
sudo nordvpn set firewall true
sudo nordvpn set killswitch true
sudo nordvpn set notify true
sudo nordvpn set obfuscate true
sudo nordvpn set cybersec true
sudo nordvpn set autoconnect true
sudo systemctl enable nordvpnd
sudo systemctl start nordvpnd
