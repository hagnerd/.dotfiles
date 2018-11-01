#!/usr/bin/env sh

echo -e "\n\nSetting MacOs Settings"
echo -e "======================="

# This file sets up any custom OSX settings that you want
# There are a ton of things you can set via the terminal

echo "Finder: show all filename extensions"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo "show hidden files by default"
defaults write com.apple.Finder AppleShowAllFiles -bool false

echo "only use UTF-8 in Terminal.app"
defaults write com.apple.terminal StringEncodings -array 4

echo "expand save dialog by default"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

echo "show the ~/Library folder in Finder"
chflags nohidden ~/Library

echo "enable full keyboard access for all controls (e.g. enable Tab in modal
# dialogs)"
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

echo "Disabling auto-correct"
defaults write NSGlobalDomain InitialKeyRepeat -int 15

echo "Enabling tab to click (trackpad)"
defaults write com.apple.driver.AppleBluetoothMultitouch.tackpad Clicking -bool true

echo "Disable hold for alternative language keys"
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
