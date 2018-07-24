" This disables the arrow keys in normal mode
fun! NoKeys()
  nnoremap <up> <nop>
  nnoremap <down> <nop>
  nnoremap <left> <nop>
  nnoremap <right> <nop>

  vnoremap <up> <nop>
  vnoremap <down> <nop>
  vnoremap <left> <nop>
  vnoremap <right> <nop>
endfun

fun! KeysPlease()
  silent! nunmap <left>
  silent! nunmap <right>
  silent! nunmap <up>
  silent! nunmap <down>

  silent! vunmap <left>
  silent! vunmap <right>
  silent! vunmap <up>
  silent! vunmap <down>
endfun

au VimEnter * call NoKeys()

" nnoremap nk :call NoKeys()<cr>
" nnoremap kp :call KeysPlease()<cr>

