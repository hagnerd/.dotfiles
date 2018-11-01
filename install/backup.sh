#!/usr/bin/env bash

# Backup files scraped by the backup script into ~/dotfiles-backup
DOTFILES=$HOME/.dotfiles
DOT_BACKUP_DIR=$HOME/dotfiles-backup
CONFIG_FILES=$HOME/.config
CONFIG_BACKUP_DIR=$HOME/config-backup

set -e # Exit immediately if commands exit with a non-zero status

if [ ! -d $DOT_BACKUP_DIR ]; then
	echo "Creating backup directory $DOT_BACKUP_DIR"
	mkdir -p $DOT_BACKUP_DIR
else
	echo "$DOT_BACKUP_DIR already exists"
fi

echo "========================================="

if [ ! -d $DOT_BACKUP_DIR ]; then
	echo "Creating backup config directory $CONFIG_BACKUP_DIR"
	mkdir -p $CONFIG_BACKUP_DIR
else
	echo "$CONFIG_BACKUP_DIR already exists"
fi

echo "========================================="

linkables=$( find -H "$DOTFILES" -maxdepth 3 -name  '*.symlink' )

for file in $linkables; do
	filename=".$( basename $file '.symlink' )"
	target="$HOME/$filename"
	if [ -f $target ]; then
		echo "Backuping up $filename"
		cp $target $DOT_BACKUP_DIR
	else
		echo -e "$filename does not exist at this location or is a symlink"
	fi
done
