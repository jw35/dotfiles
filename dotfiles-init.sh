#!/bin/bash

# Setup links from dotfile templated in the dotfiles directory

here=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

cd "${HOME}"
for f in bashrc profile gitconfig
do
    ln -fns "${here}/${f}" ".${f}"
done

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
