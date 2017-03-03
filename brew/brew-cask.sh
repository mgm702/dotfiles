# Install Caskroom
brew tap caskroom/cask
brew install brew-cask-completion
brew tap caskroom/versions

# Install packages
apps=(
  spectacle
  alfred
  dash
  firefox
  flux
  flycut
  anki
  google-chrome
  google-drive
  slack
  sketch
  spotify
  tomighty
  java
  screenhero
  iterm2
  macvim
  gitx
  evernote
  caffeine
  virtualbox
  sequel-pro
  rdm
  vagrant
  docker-toolbox
  quicksilver
)
brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

# Install packages that don't really work on Linux systems
mac=(
  elasticsearch
  heroku-toolbelt
  python
  awscli
  homebrew/php/wp-cli
  composer
)

brew install "${mac[@]}"

brew services start elasticsearch
brew services start mysql
brew services start redis
brew services start posgresql

# update Heroku CLI to latest version
heroku update
