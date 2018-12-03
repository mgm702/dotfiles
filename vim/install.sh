#!/bin/bash

DOTFILES_DIR=${DOTFILES_DIR:="$HOME/.dotfiles"}
VIM_DIR=$HOME/.vim
BUNDLE_DIR=$VIM_DIR/bundle
COLOR_DIR=$VIM_DIR/colors
SNIPPETS=$VIM_DIR/UltiSnips
SETTINGS=$VIM_DIR/settings
PLUGINS=$VIM_DIR/plugins

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
ln -sfv "$DOTFILES_DIR/vim/vimrc" $HOME/.vimrc
ln -sfv "$DOTFILES_DIR/vim/settings.vim" $HOME/.vim/settings.vim
ln -sfv "$DOTFILES_DIR/vim/plugins.vim" $HOME/.vim/plugins.vim

# Add directories for settings and plugins
# Then copy over the plugins the system directory
mkdir -p $SETTINGS
/bin/bash -c "cp -R "$DOTFILES_DIR/vim/settings/*.vim" $SETTINGS"
mkdir -p $PLUGINS
/bin/bash -c "cp -R "$DOTFILES_DIR/vim/plugins/*.plugins" $PLUGINS"

# Install bundles
vim +PlugInstall +qall
