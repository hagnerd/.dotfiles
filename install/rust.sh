#!/usr/bin/env sh

# rustup doesn't exist then install 
if type "$rustup" > /dev/null; then

  # install rustup
  curl https://sh.rustup.rs -sSf | sh

fi

