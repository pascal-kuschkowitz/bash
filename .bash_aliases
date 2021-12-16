# ~/.bashrc

alias l='ls -CF'
alias lt='ls -A --human-readable --size -1 -S --classify' # Lists all files sorted by size

alias '..'='cd ..'
alias '...'='cd ../..'

alias 'py3'='python3'

# Make dir & cd into dir
mkcd ()
{
  mkdir -p -- "$1" && cd -P -- "$1"
}

alias vi='lvim'

alias ping='ping -c 5'
alias fastping='ping -c 100 -s.2'

alias update='sudo apt update && sudo apt upgrade'

# Search history
bind '"\e[1;5A":history-search-backward'
bind '"\e[1;5B":history-search-forward'

# Move cursor with ctrl + l/r
bind '"\e[1;5C":forward-word'
bind '"\e[1;5D":backward-word'

export COLUMNS  # Remember columns for subprocesses.
alias ls="ls -F -h --color=always -v --author --time-style=long-iso -C "$@" "
