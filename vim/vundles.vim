" ========================================
" " Vim plugin configuration
" " ========================================
" "
" " This file contains the list of plugin installed using vundle plugin
" manager.
" " Once you've updated the list of plugin, you can run vundle update by
" issuing
" " the command :BundleInstall from within vim or directly invoking it from
" the
" " command line with the following syntax:
" vim --noplugin -u vim/vundles.vim -N +set hidden +syntax on
" +BundleClean! +BundleInstall +qall
" " Filetype off is required by vundle
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

runtime ruby.vundle
runtime status_line.vundle
runtime auto_complete.vundle
runtime git.vundle
"runtime php.vundle
runtime project.vundle
runtime web_dev.vundle

"Filetype plugin indent on is required by vundle
filetype plugin indent on
