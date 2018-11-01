#!/usr/bin/env bash

# Change the default shell to zsh
zsh_path="$(which zsh)"

if ! grep "$zsh_path" /etc/shells; then
	echo "adding $zsh_path to /etc/shells"
	echo "$zsh_path" | sudo tee -a /etc/shells
fi

if [[ "$SHELL" != "$zsh_path" ]]; then
	chsh -s "$zsh_path"
	echo "Default shell changed to $zsh_path"
fi

if [ ! -f /usr/local/share/zsh/site-functions/prompt_pure_setup ]; then
	git clone git@github.com:sindersorhus/pure.git
	ln -s "$PWD/pure/pure" /usr/local/share/zsh/site-functions/prompt_pure_setup
	ln -s "$PWD/pure/async.zsh" /usr/local/share/zsh/site-functions/async
fi

