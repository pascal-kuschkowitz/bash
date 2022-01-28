#######################################
#
# Appended .bashrc
#
#######################################


# Automatically display folders when changing dir 
cd() {
    builtin cd "$@" && ls # -lA
}

# export PS1=' \[\e[37;1m\]\u@\h:\[\e[m\] \[\e[35m\]\w\[\e[0m\]\$ '
 export PS1=" ┌─ \[\e[37;1m\]\u@\h\[\e[m\] \w \\$ \n "



export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Actually being able to use nvm because apt is fkn shit!
# export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm****
# . "$HOME/.cargo/env" 

# Use vim mode
set -o vi
bind '"jj":vi-movement-mode'

# Add .local/bin to PATH
export PATH="$HOME/.local/bin:$PATH"
