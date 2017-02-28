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
else
  . "$DOTFILES_DIR/osx/setup.sh"
fi

# Package managers & packages
for dir in `ls $DOTFILES_DIR`;
do
  if [ \( -f "$dir/install.sh" \) -a \( "$dir" != "bootstrap" \) ]; then
    echo "Running the install for" $dir
    if [ $dir = "brew" ]; then
      . "$dir/install.sh";

      # After brew is run, we need all the packages installed to work
      # we need to source the bash_profile script
      # into either bashrc or bash_profile depending on system
      if test "$(expr substr $(uname -s) 1 5)" = "Linux"
      then
        ln -sfv "$DOTFILES_DIR/system/bash_profile" $HOME/.bashrc
        source $HOME/.bashrc
      else
        ln -sfv "$DOTFILES_DIR/system/bash_profile" $HOME/.bash_profile
        source $HOME/.bash_profile
      fi
    else
      . "$dir/install.sh";
    fi
  fi
done
