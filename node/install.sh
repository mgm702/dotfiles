. "${DOTFILES_DIR}/system/.nvm"
nvm install 6

# Globally install these packages
packages=(
  diff-so-fancy
  ember-cli
  nodemon
  spot
  tldr
  vtop
)

npm install -g "${packages[@]}"
