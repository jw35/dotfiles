# .profile

# Use this to set environment variables (esp ones you only want changed once) 
# and things to do once at login

# Move /usr/local/{s}bin to the front of path for Brew, and $HOME/bin
# on the end
export PATH=/usr/local/sbin:/usr/local/bin:${PATH}:${HOME}/bin

export MPAGE='-bA4 -2tTfP'
export DICTIONARY=british

# Use SublimeText if available, else emacs
if [[ -x "$(command -v subl)" ]]; then
    export EDITOR='subl -n -w'
else
    export EDITOR=emacs
fi

# Github token for HomeBrew
if [[ -e .homebrew-github-token ]]; then
    source .homebrew-github-token 
fi

# setup cpan to install into home directory
eval $(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)

# Source .bashrc 
if [ -n "$BASH" ] && [ -r ~/.bashrc ]; then
    . ~/.bashrc
fi
