" Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
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
" runtime status_line.plugins

