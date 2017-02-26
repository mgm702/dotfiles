. "${DOTFILES_DIR}/system/.nvm"
nvm install 7.5

nvm use 7.5

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

nvm alias default stable
