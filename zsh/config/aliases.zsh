# TMUX ALIASES
alias ta="tmux attach"
alias tls="tmux ls"
alias tat="tmux attach -t"
alias tns="tmux new-session -s"


alias l="ls -a"
alias ll="ls -al"
alias mkdir="mkdir -p"

# Editors
alias e="$EDITOR"
alias v="$VISUAL" 
alias ins="open -a 'Visual Studio Code - Insiders'"

alias git="hub"

alias get="curl -OL"

# Reason -> OCaml
alias mlre="pbpaste | refmt --parse ml --print re --interface false | pbcopy"
alias reml="pbpaste | refmt --parse re --print ml --interface false | pbcopy"
