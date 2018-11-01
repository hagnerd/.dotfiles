# add path directory for custom scripts
export PATH=$DOTFILES/bin:$PATH

# check for custom bin directory in HOME
if [[ -d ~/bin ]]; then
  export PATH=~/bin/:$PATH
fi
