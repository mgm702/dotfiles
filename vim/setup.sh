#!/usr/bin/env bash

BUNDLE_DIR=~/.vim/bundle
COLOR_DIR=~/.vim/colors
SNIPPETS=~/.vim/UltiSnips

# Make the bundle directory for plugins
mkdir -p "$BUNDLE_DIR"

# Create vim directory on new system and setup everything else
mkdir -p "$COLOR_DIR"

# Creates directory for code snippets
mkdir -p "$SNIPPETS"

# Insert light/dark vim color scheme in system
wget -t 45 https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim -O $COLOR_DIR/jellybeans.vim
wget -t 45 https://raw.githubusercontent.com/nelstrom/vim-mac-classic-theme/master/colors/mac_classic.vim -O $COLOR_DIR/mac_classic.vim

# Add symlinks for vim files
ln -sfv "$DOTFILES_DIR/vim/vimrc" ~/.vimrc

# Add symlinks for both the setting and plugin commands
# Question is to symlink or no?

# Install bundles
vim +PlugInstall +qall
