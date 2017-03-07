# For some reason if .nvm directory isn't created
# with Homebrew.
if [! -d "$HOME/.nvm" ]
then
  mkdir "$HOME/.nvm"
fi

# Makes the nvm command work
. "${DOTFILES_DIR}/system/.nvm"

# install node version
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
