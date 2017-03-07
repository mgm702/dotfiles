export PATH=$PATH:$HOME/.linuxbrew/bin

# install heroku-toolbelt
sudo wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

# update Heroku CLI to latest version
heroku update
sudo apt-get install heroku-toolbelt

# Installs and setups virtualbox and vagrant
sudo apt-get install virtualbox
sudo apt-get install vagrant

# Need to install these the old fashion way
sudo apt-get install composer
