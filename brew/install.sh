#!/bin/sh

# Install Homebrew for different OS type
if test ! $(which brew)
  echo "Installing Homebrew Packages..."
then
  if [[ $SYSTEM == darwin* ]]; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif [[ $SYSTEM == linux* ]]; then
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
)

brew install "${apps[@]}"

if [[ $SYSTEM == darwin* ]]; then
  . "$DOTFILES_DIR/brew/brew-cask.sh"
fi

echo "Homebrew install complete!"
