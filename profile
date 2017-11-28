# .profile

# Use this to set environment variables (esp ones you only want changed once) 
# and things to do once at login

export PATH=$PATH:$HOME/bin

export MPAGE='-bA4 -2tTfP'
export EDITOR=emacs
export DICTIONARY=british

# Source .bashrc 
if [ -n "$BASH" ] && [ -r ~/.bashrc ]; then
    . ~/.bashrc
fi
