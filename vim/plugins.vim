" Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
  execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/bundle')

set rtp+=~/.vim/plugins/

runtime ruby.plugins
runtime autocomplete.plugins
runtime git.plugins
runtime php.plugins
runtime project.plugins
runtime html.plugins
runtime js.plugins
runtime css.plugins
runtime c.plugins
runtime go.vundle
runtime c.vundle
" runtime status_line.plugins

call plug#end()
