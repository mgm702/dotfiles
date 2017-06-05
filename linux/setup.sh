# This file will be used for specific linux tasks
sudo apt-get update
sudo apt-get -y install build-essential

# This is for the following distros: Fedora, Red Hat, CentOS
#sudo yum groupinstall 'Development Tools'

sudo apt-get install libssl-dev
sudo apt-get install openssl
sudo apt-get install bison

# Install Docker Tools (Machine, Compose) for Linux
curl -L https://github.com/docker/machine/releases/download/v0.10.0/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine &&
chmod +x /tmp/docker-machine &&
sudo cp /tmp/docker-machine /usr/local/bin/docker-machine

curl -L https://github.com/docker/compose/releases/download/1.14.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
