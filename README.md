# Thanks for checking out my dotfiles!

This README, and the dotfiles are a work in progress. I'm constantly slicing, and reconfiguring them to make my setup as slim and ergonomic as possible. I re-install fresh about once a year so I try to remove any discomfort from the process. Let me know if you hit anything that feels painful.

* [The Idea](#the-idea)
* [Customizations](#customizations)
*   [Zsh](#zsh)
* [Installation](#installation)
*   [Mac OS](#mac-os)

## The Idea

My goal is not make dotfiles that people copy, but a set of install, and backup scripts that make configuring your own dotfiles as easy as possible.

I susbscribe to the mindset that the more dotfiles you copy from other people carte blanche, the less you understand.

I took inspriation from Thoughtbot, and [Nicknisi](https://github.com/nicknisi/dotfiles), but I've completely gutted what they had, and rewrote with just the pieces that I know how they work, and that I genuinely find useful.

Steal small pieces, get inspired, but don't take everything.

## Customizations

### ZSH
There are three folders within zsh.

They get sourced in the following order:
* `pre/`
* `config/`
* `post/`

This allows for more modularity, and to control the flow when it is necessary.

All of the files that end with `.zsh` within those folders will get sourced. Don't need some of my specific configs? Great! Delete them :). Need different configs? You have the freedom to break them out into whichever folder! 

I would default to `config/` unless you know it needs to be sourced near the end, or the beginning.

## Installation
WARNING! If you are NOT running this from a freshly installed computer, you may potentially break your current set up. I am working on a better way to backup your configs, and restore from your backups. But right now I'm more concerned with the installation process working properly.

If you would like to customize your setup a bit, I suggest forking this repo, and then customizing after you clone your fork down. Then run the install.

### Mac OS

Run this in the terminal, if git is not installed it will prompt you.
`git --version` 
`git clone git@github.com:hagnerd/.dotfiles.git ~/.dotfiles`
`~/.dotfiles/install.sh`
