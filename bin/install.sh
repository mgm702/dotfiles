#!/bin/bash

mkdir $HOME/bin
ln -sfv "$DOTFILES_DIR/bin/calc" $HOME/bin/calc
ln -sfv "$DOTFILES_DIR/bin/colors" $HOME/bin/colors
ln -sfv "$DOTFILES_DIR/bin/e" $HOME/bin/e
ln -sfv "$DOTFILES_DIR/bin/get" $HOME/bin/get
ln -sfv "$DOTFILES_DIR/bin/git-nuke" $HOME/bin/git-nuke
ln -sfv "$DOTFILES_DIR/bin/glog" $HOME/bin/glog
ln -sfv "$DOTFILES_DIR/bin/va" $HOME/bin/va
ln -sfv "$DOTFILES_DIR/bin/wtr" $HOME/bin/wtr

chmod 775 $HOME/bin/*
