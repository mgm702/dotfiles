#!/usr/bin/env bash

echo "Installing Ruby!"

#Time to Source in the Ruby Gems
. "$DOTFILES_DIR/ruby/gem.sh"

ln -sfv "$DOTFILES_DIR/ruby/irbrc" $HOME/.irbrc
ln -sfv "$DOTFILES_DIR/ruby/railsrc" $HOME/.railsrc
ln -sfv "$DOTFILES_DIR/ruby/ruby-version" $HOME/.ruby-version
