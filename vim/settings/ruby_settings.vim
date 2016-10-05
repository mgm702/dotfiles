nnoremap <leader>> :ChangeHashSyntax<cr>

" Remove trailing whitespace on save for ruby files.
au BufWritePre *.rb :%s/\s\+$//e
