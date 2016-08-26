#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR
current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DOTFILES_DIR="$(dirname "$current_dir")"

# Update dotfiles itself first

#[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Symlinks go here
#ln -sfv "$DOTFILES_DIR/user/.bash_profile" ~
#ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~

# Package managers & packages

#. "$DOTFILES_DIR/ruby/install.sh"

for dir in `ls $DOTFILES_DIR`;
do
  if [ \( -f "$dir/install.sh" \) -a \( "$dir" != "bootstrap" \) ]; then
    echo $dir
    . "$dir/install.sh";
  fi
done

#if [ "$(uname)" == "Darwin" ]; then
     #. "$DOTFILES_DIR/install/brew-cask.sh"
     #. "$DOTFILES_DIR/install/gem.sh"
#fi
