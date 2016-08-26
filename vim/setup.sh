BUNDLE_DIR=~/.vim/bundle
COLOR_DIR=~/.vim/colors

# Install/update Vundle
mkdir -p "$BUNDLE_DIR" && (git clone https://github.com/VundleVim/Vundle.vim "$BUNDLE_DIR/vundle" || (cd "$BUNDLE_DIR/vundle" && git pull origin master))

# Create vim directory on new system and setup everything else
mkdir -p "$COLOR_DIR"

# Insert light/dark vim color scheme in system
cd $COLOR_DIR
wget -t 45 https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim
wget -t 45 https://raw.githubusercontent.com/nelstrom/vim-mac-classic-theme/master/colors/mac_classic.vim

# Add symlinks for vim files
ln -sfv "$DOTFILES_DIR/vim/vimrc" ~/.vimrc

# Build out settings and vundle portions
# Question is to symlink or no?


# Install bundles
vim +PluginInstall +qall

# Compile YouCompleteMe
cd "$BUNDLE_DIR/YouCompleteMe" && ./install.py

cd -
