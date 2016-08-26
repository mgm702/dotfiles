#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update dotfiles itself first

[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Symlinks go here
ln -sfv "$DOTFILES_DIR/user/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~

# Package managers & packages

. "$DOTFILES_DIR/install/brew.sh"


if [ "$(uname)" == "Darwin" ]; then
     . "$DOTFILES_DIR/install/brew-cask.sh"
     . "$DOTFILES_DIR/install/gem.sh"
fi
