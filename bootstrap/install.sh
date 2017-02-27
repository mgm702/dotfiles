#!/usr/bin/env bash

# Get current dir
export DOTFILES_DIR
bootstrap_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DOTFILES_DIR="$(dirname "$bootstrap_dir")"

# Update dotfiles itself first
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# if installed on Linux, run necessary updates
if test "$(expr substr $(uname -s) 1 5)" = "Linux"
then
  . "$DOTFILES_DIR/linux/setup.sh"
fi

# Package managers & packages
for dir in `ls $DOTFILES_DIR`;
do
  if [ \( -f "$dir/install.sh" \) -a \( "$dir" != "bootstrap" \) ]; then
    echo "Running the install for" $dir
    if [ $dir = "brew" ]; then
      . "$dir/install.sh";
      ln -sfv "$DOTFILES_DIR/system/bash_profile" $HOME/.bash_profile
      source $HOME/.bash_profile
    else
      . "$dir/install.sh";
    fi
  fi
done
