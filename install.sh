#!/usr/bin/env bash

# initialize submodules
git submodule init

command_exists() {
	type "$1" > /dev/null 2>&1
}

source install/link.sh
source install/git.sh

# Check that the user is on a mac
if [ "$(uname)" == "Darwin" ]; then
	echo -e "Running OSX"

	if ! xcode-select -p; then
		echo "Installing XCODE..."	
		echo "this may take a few minutes"	
		xcode-select --install
	fi

	source install/brew.sh
	source install/osx.sh
  source install/rust.sh

  # Installs n for easy node version management 👍
  curl -L https://git.io/n-install | bash

  if ! [ -d "$HOME/.git_template" ]; then
    echo "Creating ~/.git_template directory"
    mkdir $HOME/.git_template
  fi

fi

source install/zsh.sh

echo "Setup done."
echo "Restart your terminal now"
