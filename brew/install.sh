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
  dockutil
  git
  go
  gnu-sed
  hub
  wget
  ctags
  imagemagick
  python
  vim
  tmux
  grc
  z
  ruby-install
  chruby
  nvm
  postgresql
  redis
  mysql
  elasticsearch
  composer
  wp-cli
  awscli
  heroku-toolbelt
)

brew install "${apps[@]}"

# update Heroku CLI to latest version
heroku update

if [ "$(uname)" == "Darwin" ]; then
  brew install macvim
  . "$DOTFILES_DIR/brew/brew-cask.sh"
fi

echo "Homebrew install complete!"
