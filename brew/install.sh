#!/bin/sh

# Install Homebrew for different OS type
if test ! $(which brew)
  echo "Installing Homebrew Packages..."
then
  if test "$(uname)" = "Darwin"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  then
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
  bash-completion2
  coreutils
  dockutil
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
  macvim
  postgresql
  redis
  mysql
  composer
  wp-cli
  awscli
  heroku-toolbelt
)

brew install "${apps[@]}"

# update Heroku CLI to latest version
heroku update

echo "Homebrew install complete!"
