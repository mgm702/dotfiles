export PATH=$PATH:$HOME/.linuxbrew/bin

# install heroku-toolbelt
sudo apt-get install software-properties-common -Y # debian only
sudo add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./"
curl -L https://cli-assets.heroku.com/apt/release.key | sudo apt-key add -
sudo apt-get update
sudo apt-get install heroku

# update Heroku CLI to latest version
heroku update

# Need to install these the old fashion way
#brew install homebrew/php/wp-cli
#brew install homebrew/php/composer
