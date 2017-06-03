#!/bin/sh

# Install Homebrew for different OS type
if test ! $(which brew)
  echo "Installing Homebrew Packages..."
then
  if [[ $OSTYPE == darwin* ]]; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif [[ $OSTYPE == linux* ]]; then
    git clone https://github.com/Linuxbrew/brew.git ~/.linuxbrew
    . "$DOTFILES_DIR/brew/brew-linux.sh"
  fi
fi

brew tap homebrew/versions
brew tap homebrew/dupes
brew tap Goles/battery
brew update
brew upgrade

apps=(
  ruby-install
  chruby
  nvm
  vim
  tmux
  bash-completion
  coreutils
  dockutil
  gnu-sed
  hub
  imagemagick
  z
)

brew install "${apps[@]}"

if [[ $OSTYPE == darwin* ]]; then
  . "$DOTFILES_DIR/brew/brew-cask.sh"
fi

echo "Homebrew install complete!"
