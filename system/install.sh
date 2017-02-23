#!/bin/bash

# link the bash_profile to system one and then source it in
ln -sfv "$DOTFILES_DIR/system/bash_profile" $HOME/.bash_profile
