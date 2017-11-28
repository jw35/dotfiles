#!/bin/bash

# Setup links from dotfile templated in the dotfiles directory

for $f in bashrc profile
do
    ln -fhs "${f}" "~/.${f}"
done

mkdir -p ~/bin
for f in bin/*
do
    ln -fhs "${f}" "~/bin/${f}"
done
