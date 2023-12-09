#!/bin/bash

files=(".vimrc" ".tmux.conf")
destinations=("$HOME/.vimrc" "$HOME/.tmux.conf")

destination_str=""
for destination in ${destinations[@]}
do
  destination_str="$destination_str $destination"
done

main() {
  while true
  do
    read -p "Are you sure to install these configs. Your following files will be replaced $destination_str: " yn
    case $yn in
      [Yy]* ) copy_dotfiles; break;;
      [Nn]* ) echo "Good Bye!"; exit 0;;
      * ) echo "Please answer Yes(y) or No(n).";;
    esac
  done
}

copy_dotfiles() {
  for index in ${!files[@]} 	
  do
    file=${files[$index]}
    destination=${destinations[$index]}
    cat $file > $destination
  done
}

main "$@"; exit;

