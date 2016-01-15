" Automatically reload vimrc when it's saved "{{{
augroup VimrcSo
au!
autocmd BufWritePost $MYVIMRC so $MYVIMRC
augroup END
" }}}
