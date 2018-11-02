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

if [[ ! -f /usr/local/share/zsh/site-functions/prompt_pure_setup ]]; then
	ln -s "$DOTFILES/pure/pure.zsh" /usr/local/share/zsh/site-functions/prompt_pure_setup
	ln -s "$DOTFILES/pure/async.zsh" /usr/local/share/zsh/site-functions/async
else
  echo "Prompt already set up"
fi

