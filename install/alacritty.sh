#!/usr/bin/env bash

if ! [[ -d /Applications/Alacritty.app ]]; then

  # clone down the repository
  git clone https://github.com/jwilm/alacritty.git "$HOME/alacritty"
  cd ~/alacritty

  # make sure that rustup is using the latest stable release
  rustup override set stable
  rustup update stable

  make app
  # copy over the application to the app folder
  cp -r target/release/oxs/Alacritty.app /Applications/

  # set up man pages
  sudo mkdir -p /usr/local/share/man/man1
  gzip -c alacritty.man | sudo tee /user/local/share/man/man1/alacritty.1.gz > /dev/null

fi

