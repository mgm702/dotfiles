#!/usr/bin/env bash

# Get current dir
export DOTFILES_DIR
bootstrap_dir ="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DOTFILES_DIR="$(dirname "$bootstrap_dir")"

# Update dotfiles itself first
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Package managers & packages
for dir in `ls $DOTFILES_DIR`;
do
  if [ \( -f "$dir/install.sh" \) -a \( "$dir" != "bootstrap" \) ]; then
    echo $dir
    . "$dir/install.sh";
  fi
done

