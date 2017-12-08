#!/bin/bash

# Setup links from dotfile templated in the dotfiles directory

here=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

cd "${HOME}"
for f in bashrc profile gitconfig psqlrc
do
    ln -fns "${here}/${f}" ".${f}"
done
# Move .bash_profile out of the way if present
if [[ -e .bash_profile ]]
then
    mv .bash_profile bash_profile_OFF
fi
mkdir -p bin
cd bin
for f in ${here}/bin/*
do
    ln -fns "${f}" "$(basename ${f})"
done

mkdir -p .ssh
cd .ssh
for f in ${here}/ssh/*
do
    ln -fns "${f}" "$(basename ${f})"
    chmod u=rw,go= "${f}"
done
