# install the gvm
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
source "$HOME/.gvm/scripts/gvm"

# install the golang versions you want (1.4, 1.8)
gvm install go1.4
gvm install go1.8

# possibly have this run after source of bashrc and then install packages necessary for dev work
