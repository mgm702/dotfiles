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
  slack
  discord
  sketch
  spotify
  tomighty
  java
  caskroom/versions/java8
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

# make it so if /Applications/iTerm.app is found don't install this package
# brew cask install iterm2

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

# Install packages that don't really work on Linux systems
mac=(
  wget
  heroku-toolbelt
  python
  awscli
  composer
  ctags
  postgresql
  redis
  mysql
  elasticsearch
)

brew install "${mac[@]}"

brew services start elasticsearch
brew services start mysql
brew services start redis
brew services start posgresql

# update Heroku CLI to latest version
heroku update
