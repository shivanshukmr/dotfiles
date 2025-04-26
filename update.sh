#!/bin/sh

# Vim
echo "-> git submodule update --remote"
git submodule update --remote

# :TSUpdate in vim
echo "-> vim: TSUpdate"
vim --headless +"TSUpdate | quit"

# :helptags ALL in vim
echo "\n-> vim: helptags ALL"
vim --headless +"helptags ALL | quit"
