#!/usr/bin/env bash

# Symlink the gitconfig and git template files
DOTFILES_DIR=${DOTFILES_DIR:="$HOME/.dotfiles"}
GIT_HOOKS=$HOME/.git_template/hooks
ln -sfv "$DOTFILES_DIR/git/gitignore_global" $HOME/.gitignore
ln -sfv "$DOTFILES_DIR/git/gitconfig" $HOME/.gitconfig
ln -sfv "$DOTFILES_DIR/git/git-prompt" $HOME/.git-prompt.sh

## Configuration for CTags in Git Repos
mkdir -p $GIT_HOOKS
ln -sfv "$DOTFILES_DIR/git/git_template/hooks/ctags" $GIT_HOOKS/ctags
ln -sfv "$DOTFILES_DIR/git/git_template/hooks/post-checkout" $GIT_HOOKS/post-checkout
ln -sfv "$DOTFILES_DIR/git/git_template/hooks/post-merge" $GIT_HOOKS/post-merge
ln -sfv "$DOTFILES_DIR/git/git_template/hooks/post-commit" $GIT_HOOKS/post-commit
ln -sfv "$DOTFILES_DIR/git/git_template/hooks/post-rewrite" $GIT_HOOKS/post-rewrite

## Adds scm_breeze to users home directory and runs install on it
git clone git://github.com/ndbroadbent/scm_breeze.git $HOME/.scm_breeze
$HOME/.scm_breeze/install.sh

## Adds the file necessary for displaying Git status in Bash prompt
wget -t 45 https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O $HOME/.git-prompt.sh
