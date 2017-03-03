#Installs the correct ruby version
# and sets up correct path to ruby files
ruby-install ruby-2.4.0

if [[ $OSTYPE == darwin* ]]; then
  source $HOME/.bash_profile
elif [[ $OSTYPE == linux* ]]; then
  source $HOME/.bashrc
fi

chruby ruby-2.4.0
gem install bundler
gem install pry
gem install rspec
gem install rake
gem install gem-path
gem install looksee
gem install lunchy
gem install nokogiri
gem install mechanize
gem install rails
