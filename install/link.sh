#!/usr/bin/env bash

DOTFILES=$HOME/.dotfiles

echo -e "\nCreating symlinks"
echo "-------------------"

linkables=$( find -H "$DOTFILES" -maxdepth 3 -name '*.symlink' -not -path
"$DOTFILES/vim/*" )

for file in $linkables; do
	target="$HOME/.$( basename $file '.symlink')"
	if [ -e "$target" ]; then
		echo "~${target#$HOME} already exists... skipping..."
	else
		echo "Creating symlink for $file"
		ln -s $file $target
	fi
done

if ! [ -d $HOME/.vim ]; then
  git clone https://github.com/hagnerd/.vim "$HOME/.vim"
fi

# TODO: Come back and set up config workflow

if ! [ -d $HOME/.config/nvim ]; then
  mkdir -p "$HOME/.config/nvim"
fi

# TODO: Come up with a better way to automate 🤔

ln -s "$HOME/.dotfiles/config/init.vim" "$HOME/.config/nvim/init.vim"
