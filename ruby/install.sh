#!/usr/bin/env bash

echo "Installing Ruby!"
ln -sfv "$DOTFILES_DIR/ruby/irbrc" ~/.irbrc
ln -sfv "$DOTFILES_DIR/ruby/railsrc" ~/.railsrc
ln -sfv "$DOTFILES_DIR/ruby/ruby-version" ~/.ruby-version

#Time to Source in the Ruby Gems
. "$DOTFILES_DIR/ruby/gem.sh"
