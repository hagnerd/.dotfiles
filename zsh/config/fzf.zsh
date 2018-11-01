# Install and setup Zsh Autocompletions with Brew ?? Good option for extracting
if type brew &>/dev/null; then
	FPATH=$(brew --prefix)/share/zsh/site-functions/:$FPATH
fi

#
# OLD ZSH CONFIG keep for posterity
#

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# export FZF_DEFAULT_COMMAND='find . $HOME'
# export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# export FZF_ALT_C_COMMAND="find -t d . $HOME"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS='--layout=reverse --border'
