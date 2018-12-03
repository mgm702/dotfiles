#!/bin/sh

DOTFILES_DIR=${DOTFILES_DIR:="$HOME/.dotfiles"}

# Setup preferred Mac defaults
. "$DOTFILES_DIR/osx/defaults.sh"

# Setup Dock preferences
. "$DOTFILES_DIR/osx/dock.sh"
