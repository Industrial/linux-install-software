#!/usr/bin/env bash

echo "> install"

echo "> install > sudo rights"
sudo echo "> install > sudo rights > acquired"

mkdir -p .tmp

./time.sh
./packages.sh
./shell.sh
./development.sh
./fonts.sh
./repositories/index.sh

# These are optional and depend on the type of system.
#./desktop.sh
#./docker.sh
#./media.sh
#./security.sh
