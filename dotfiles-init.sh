#!/bin/bash

# Set up links from dotfile templated in the dotfiles directory

here=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Copy assorted files into home directory
cd "${HOME}"
for f in bashrc profile gitconfig psqlrc eslintrc.js tidyrc
do
    ln -fns "${here}/${f}" ".${f}"
done
# Move .bash_profile out of the way if present
if [[ -e .bash_profile ]]
then
    mv .bash_profile bash_profile_OFF
fi

# Populate ~/bin
cd "${HOME}"
mkdir -p bin
cd bin
for f in ${here}/bin/*
do
    ln -fns "${f}" "$(basename ${f})"
done
# A bug used to create a .ssh directory here...
rm -rf .ssh

# Populate .ssh directory
cd "${HOME}"
mkdir -p .ssh
cd .ssh
ln -fns "${here}/ssh/config" "config"
#if [[ "$OSTYPE" == "darwin"* ]]; then
#    Do something on mac machines
#else
#    Do something on everything else
#fi

# Populate .config directory
cd "${HOME}"
mkdir -p .config
cd .config
for f in ${here}/config/*
do
	ln -fns "${f}" "$(basename ${f})"
done
