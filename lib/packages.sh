user_in_group() {
  groups $1 | grep -c "$2"
}

conditionally_install_packages() {
  install_command=""
  if command -v yay &> /dev/null; then
    install_command="yay -S --noconfirm"
  else
    install_command="sudo pacman -S --noconfirm"
  fi

  packages=$1
  for t in ${packages[@]}; do
    pacman -Qi $t &> /dev/null
    exists=$?
    if [ ! $exists -eq 0 ]; then
      $install_command $t 1> /dev/null
    fi
  done
}

conditionally_uninstall_packages() {
  uninstall_command=""
  if command -v yay &> /dev/null; then
    uninstall_command="yay -Rs --noconfirm"
  else
    uninstall_command="sudo pacman -Rs --noconfirm"
  fi

  packages=$1
  for t in ${packages[@]}; do
    pacman -Qi $t &> /dev/null
    doesnt_exist=$?
    if [ $doesnt_exist -eq 0 ]; then
      $uninstall_command $t 1> /dev/null
    fi
  done
}
