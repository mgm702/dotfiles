#!/usr/bin/env bash

# Get current dir
export DOTFILES_DIR
bootstrap_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DOTFILES_DIR="$(dirname "$bootstrap_dir")"
export SYSTEM
SYSTEM=$OSTYPE

# Update dotfiles itself first
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# if installed on Linux, run necessary updates
if [[ $SYSTEM == linux* ]]; then
  . "$DOTFILES_DIR/linux/setup.sh"
fi

# Package managers & packages
for dir in `ls $DOTFILES_DIR`;
do
  if [ \( -f "$dir/install.sh" \) -a \( "$dir" != "bootstrap" \) ]; then
    echo "Running the install for" $dir
    if [ $dir = "brew" ]; then
      . "$dir/install.sh";

      # After brew is run
      # source the bash_profile script
      # into either bashrc or bash_profile depending on system
      if [[ $SYSTEM == linux* ]]; then
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

# After everything is installed for OSX, source in preffered setup
if [[ $SYSTEM == darwin* ]]; then
  . "$DOTFILES_DIR/osx/setup.sh"
fi
