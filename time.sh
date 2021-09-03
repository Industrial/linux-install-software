#!/usr/bin/env bash

echo "> time"

echo "> time > timezone: Europe/Amsterdam"
timedatectl set-timezone Europe/Amsterdam

echo "> time > ntp: true"
timedatectl set-ntp true
