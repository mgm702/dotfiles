" ================ General Settings ====================
set nocompatible
set number
set relativenumber
set history=700                " Sets how many lines of history VIM has to remember
set backspace=indent,eol,start " Allow backspace in insert mode
set showmode                   " Show current mode down the bottom
if has('gui_running')
  syntax on
endif
set showcmd                    " Show what commands you’re typing
set laststatus=2               " Show status line
set modeline                   " Allow modelines
set ruler                      " Show current line and column position in file
set title                      " Show file title in terminal tab
set cmdheight=2                " Sets the Height of the Command Line
set wildmenu                   " Turn on the WiLd menu, auto complete for commands in command line
set noerrorbells               " No sounds on error
set novisualbell

let g:mapleader = ","

" This sets my shell to be equal to the current shell in my iterm
set shell=$SHELL\ -l

"Auto chdir in Vim
autocmd BufEnter * silent! lcd %:p:h

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" ================ Custom Settings ========================
let g:rspec_runner = "os_x_iterm2"
" This loads all the settings specified in ~/.vim/settings.vim
if filereadable(expand("~/.vim/settings.vim"))
  source ~/.vim/settings.vim
endif

" =============== Plugin Initialization ===============
" This loads all the plugins specified in ~/.vim/plugins.vim
if filereadable(expand("~/.vim/plugins.vim"))
  source ~/.vim/plugins.vim
endif

