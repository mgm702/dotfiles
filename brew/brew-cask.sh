# Install Caskroom

brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages

apps=(
  spectacle
  alfred
  dash
  firefox
  flux
  google-chrome
  google-drive
  slack
  spotify
  tomighty
  iterm2
  evernote
  caffeine
  virtualbox
  sequel-pro
  vagrant
  docker-toolbox
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
