#!/bin/sh

vimplug_v="e300178"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/${vimplug_v}/plug.vim

