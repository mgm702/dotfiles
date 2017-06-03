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

# Install Docker Tools (Machine, Compose) for Linux
curl -L https://github.com/docker/machine/releases/download/v0.10.0/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine &&
chmod +x /tmp/docker-machine &&
sudo cp /tmp/docker-machine /usr/local/bin/docker-machine

curl -L https://github.com/docker/compose/releases/download/1.14.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
