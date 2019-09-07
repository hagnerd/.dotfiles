#!/usr/bin/env bash

rust_exists() {
  type "$rustup" > /dev/null 2>&1
}

# rustup doesn't exist then install 
if ! rust_exists; then

  # install rustup
  curl https://sh.rustup.rs -sSf | sh

fi

