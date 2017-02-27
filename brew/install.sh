#!/bin/sh

# Install Homebrew for different OS type
if test ! $(which brew)
  echo "Installing Homebrew Packages..."
then
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
    . "$DOTFILES_DIR/brew/brew-linux.sh"
  fi
fi

brew tap homebrew/versions
brew tap homebrew/dupes
brew tap Goles/battery
brew update
brew upgrade

apps=(
  bash-completion
  coreutils
  tmux
  dockutil
  #git
  go
  gnu-sed
  hub
  wget
  ctags
  imagemagick
  vim
  z
  ruby-install
  chruby
  nvm
  postgresql
  redis
  mysql
  elasticsearch
  awscli
)

brew install "${apps[@]}"

if [ "$(uname)" == "Darwin" ]; then
  . "$DOTFILES_DIR/brew/brew-cask.sh"
fi

echo "Homebrew install complete!"
