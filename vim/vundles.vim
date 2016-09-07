filetype off

" set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/vundles/
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" call vundle#begin('~/.vim/bundle/')
"
" " let Vundle manage Vundle (required)
Bundle "gmarik/vundle"

if(v:version > 730)
  Bundle 'Valloric/YouCompleteMe'
endif

" Organize vundle packages better for clarity
runtime ruby.vundle
runtime auto_complete.vundle
runtime git.vundle
runtime project.vundle
runtime web_dev.vundle

"runtime php.vundle
"runtime status_line.vundle

"Filetype plugin indent on is required by vundle
filetype plugin indent on
