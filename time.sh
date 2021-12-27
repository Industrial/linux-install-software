#!/usr/bin/env bash

echo "> time"

if ! timedatectl;
then
  echo "! time > timedatectl not available, skipping..."
else
  echo "> time > timezone: Europe/Amsterdam"
  timedatectl set-timezone Europe/Amsterdam

  echo "> time > ntp: true"
  timedatectl set-ntp true
fi
