#!/usr/bin/env bash

echo "> repositories"

mkdir -p $HOME/Repositories

./repositories/movescreen.sh
./repositories/configuration-fish.sh
./repositories/configuration-vscode.sh
./repositories/configuration-xmonad.sh
