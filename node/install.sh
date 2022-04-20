DOTFILES_DIR=${DOTFILES_DIR:="$HOME/.dotfiles"}
# For some reason if .nvm directory isn't created
# with Homebrew.
if [ ! -d "$HOME/.nvm" ]
then
  mkdir "$HOME/.nvm"
fi

# Makes the nvm command work
. "${DOTFILES_DIR}/system/.nvm"

# install node version
nvm install 17.0.1
nvm use v17.0.1

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
