# Symlink the gitconfig and git template files
GIT_HOOKS = ~/.git_template/hooks
ln -sfv "$DOTFILES_DIR/git/gitignore_global" ~/.gitignore_global
ln -sfv "$DOTFILES_DIR/git/gitconfig" ~/.gitconfig

# Configuration for CTags in Git Repos
mkdir -p $GIT_HOOKS
ln -sfv "$DOTFILES_DIR/git/git_template/hooks/ctags" $GIT_HOOKS/ctags
ln -sfv "$DOTFILES_DIR/git/git_template/hooks/post-checkout" $GIT_HOOKS/post-checkout
ln -sfv "$DOTFILES_DIR/git/git_template/hooks/post-merge" $GIT_HOOKS/post-merge
ln -sfv "$DOTFILES_DIR/git/git_template/hooks/post-commit" $GIT_HOOKS/post-commit
ln -sfv "$DOTFILES_DIR/git/git_template/hooks/post-rewrite" $GIT_HOOKS/post-rewrite

