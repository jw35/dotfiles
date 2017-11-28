# .bashrc

# save all lines of a multiple-line command in the same history entry
shopt -s cmdhist

# Handy aliases 

fitterm(){ cut -c 1-$( tput cols ); }

# I don't want all the bash autompletion magic, so just source this one
[[ -f /etc/bash_completion.d/virtualenvwrapper ]] && source /etc/bash_completion.d/virtualenvwrapper

# Autocomlete and prompt for Bash
[[ -f "$HOME/bin/git-completion.bash" ]] && source "$HOME/bin/git-completion.bash"
[[ -f "$HOME/bin/git-prompt.sh" ]] && source "$HOME/bin/git-prompt.sh"
PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'
GIT_PS1_SHOWDIRTYSTATE='yes'
GIT_PS1_SHOWSTASHSTATE='yes'
GIT_PS1_SHOWUNTRACKEDFILES='yes'
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS='yes'
