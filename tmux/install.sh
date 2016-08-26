#!/usr/bin/env bash

# Install Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Add symlinks for vim files
ln -sfv "$DOTFILES_DIR/tmux/tmux.conf" ~/.tmux.conf

tmux source ~/.tmux.conf
