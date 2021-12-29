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

# Add user to nordvpn group
sudo usermod -aG nordvpn $USER

# Enable and start the service
sudo systemctl enable nordvpnd
sudo systemctl start nordvpnd

# Setting this to true will leave you in a disconnected
# state. While being safer, you won't be able to log in.
sudo nordvpn set killswitch false

# Log in
ACCOUNT=$(sudo nordvpn account)
ACCOUNT_NOT_LOGGED_IN="You are not logged in"
# Match string (because of colors/control characters in output)
if [[ "${ACCOUNT}" == *"${ACCOUNT_NOT_LOGGED_IN}"* ]]; then
  sudo nordvpn login --legacy
fi

# Set nordvpn settings
sudo nordvpn set autoconnect true
sudo nordvpn set cybersec true
sudo nordvpn set firewall true
sudo nordvpn set ipv6 true
sudo nordvpn set killswitch true
sudo nordvpn set notify true
sudo nordvpn set obfuscate true

# Connect
sudo nordvpn connect
