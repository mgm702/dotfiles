" ================ General Settings ====================
set nocompatible
set number
set relativenumber
set history=700                " Sets how many lines of history VIM has to remember
set backspace=indent,eol,start " Allow backspace in insert mode
set showmode                   " Show current mode down the bottom
syntax on                      " Syntax highlighting
set showcmd                    " Show what commands you’re typing
set laststatus=2               " Show status line
set modeline                   " Allow modelines
set ruler                      " Show current line and column position in file
set title                      " Show file title in terminal tab
set cmdheight=2                " Sets the Height of the Command Line
set wildmenu                   " Turn on the WiLd menu, auto complete for commands in command line
set noerrorbells               " No sounds on error
set novisualbell
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file, and currently , is leader key
let mapleader = ","
let g:mapleader = ","

" ============= Folds Settings =====================
set foldmethod=indent   " Fold based on indent
set foldnestmax=3       " Deepest fold is 3 levels
set nofoldenable        " Don't fold by default
set foldlevelstart=99   " start out with everything unfolded

" ================ Relevant Filetypes ====================
au BufRead,BufNewFile *.scss set filetype=css
au BufRead,BufNewFile *.md set filetype=markdown

" ========= Files, Backups, and Swap Files ==========
set noswapfile                  " Makes it so no .swp file is created when working on a project
set nowb
set nobackup
" Below is set to fix autoread issues in Vim
set autoread
au FocusGained,BufEnter * :silent! !
au FocusLost,WinLeave * :silent! w
" If Focus is lost on the terminal, autosave

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set expandtab

"Invisible Characters for spacing
set lcs=tab:▸\ ,trail:-,extends:>,precedes:<,nbsp:+

set list
" For ruby, autoindent with two spaces, always expand tabs
autocmd FileType ruby,vim,haml,eruby,yaml,html,javascript,sass,scss,cucumber set ai sw=2 sts=2 et
" For python and php the indentation will be set at four instead of two and expand tabs
autocmd FileType css,python,php set sw=4 sts=4 et

filetype plugin on
filetype indent on

set wrap       " Wrap lines
set linebreak  " Wrap lines at convenient points

" ================ Interactions ==============================

set scrolloff=3                 " Start scrolling slightly before the cursor reaches an edge
set sidescrolloff=5             " Scroll sideways a character at a time, rather than a screen at a time
set sidescroll=1
set mouse=a             " Enable mouse use in all modes
set clipboard=unnamed   " Allows yy to work with clipboard

" ================ Status Line ====================
" Format the status line
"set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l/%L\ \ col:%c

set statusline=
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number

"function! AirlineStatusBar()
  "if exists(":AirlineTheme")

    " mapping for airline status bar style
    let g:airline_powerline_fonts=1
    let g:airline_theme='badwolf'
    let g:airline#extensions#tabline#enabled = 1
    let g:powerline_symbols = 'fancy'

    " function to show total amount of lines in the airline  and the percentage of
    " file cursor is currently located at {{{
    function! AirlineInit()
      let g:airline_section_z = airline#section#create_right(['line:%l/%L col:%c %p%%'])
      let g:airline_section_c = airline#section#create_left(['%f'])
    endfunction
    " }}}]
    ":call AirlineInit()
  "endif
"endfunction

"au VimEnter * call <Plug>NERDTreeToggle
"au VimEnter * call AirlineStatusBar()
au VimEnter * call AirlineInit()

" ================ Color Scheme ====================
syntax on
set term=screen-256color
set background=dark
color jellybeans

" Mapping for Rainbow Parentheses
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
let g:rainbow_conf = {'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick']}

" =============== Vundle Initialization ===============
" This loads all the plugins specified in ~/.vim/vundles.vim
" Use Vundle plugin to manage all other plugins
if filereadable(expand("~/.vim/vundles.vim"))
  source ~/.vim/vundles.vim
endif


" ================ Custom Settings ========================
" This loads all the settings specified in ~/.vim/settings.vim
" these can be included and removed based on config preferences
if filereadable(expand("~/.vim/vundles.vim"))
  so ~/.vim/settings.vim
endif
