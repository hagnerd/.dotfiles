#!/usr/bin/env bash

if test ! "$(which brew)"; then
  echo "Installing Homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "---------------------------"
echo "Cracking open a cold one 🍺"
echo "---------------------------"

echo "\n\nInstalling Homebrew Packages..."
echo "-----------------------------------"

formulas=(
  ack
  chunkwm
  fzf
  git
  git-standup
  gnupg
  'grep'
  heroku
  hub
  imagemagick
  mas
  mongodb
  neovim
  peco
  python
  python3
  ripgrep
  ruby
  skhd
  sqlite
  the_silver_searcher
  tmux
  todoist
  unrar
  vim
  watchman
  wget
  zsh
  zsh-completions
  zsh-syntax-highlighting
)

cask_formulas=(
  cheatsheet
  dropbox
  gimp
  insomnia
  karabiner-elements
  keycastr
  obs
  slack
  smcfancontrol
  visual-studio-code
  vlc
)

fonts=(
  font-firacode-nerd-font
  font-firacode-nerd-font-mono
  font-hack-nerd-font
  font-hasklig-nerd-font
)

# iterate through the list of brew apps and install if not already installed
for formula in "${formulas[@]}"; do
  if brew list "$formula" > /dev/null 2>&1; then
    echo "$formula already installed... skipping..."
  else
    brew install "$formula"
  fi
done

# iterate through the list of brew cask apps and install if not already installed
for cask_formula in "${cask_formulas[@]}"; do
  if brew cask list "$cask_formula" > /dev/null 2>&1; then
    echo "$cask_formula already installed... skipping..."
  else
    brew cask install "$cask_formula"
  fi
done

# tap font caskroom
brew tap caskroom/fonts
for font in "${fonts[@]}"; do
  if brew cask list "$font" > /dev/null 2>&1; then
    echo "$font already installed... skipping..."
  else
    brew cask install "$font"
  fi
done

