" ================ Color Scheme ====================
syntax on
set term=screen-256color
if has("unix")
  let s:name = system("echo $OSTYPE")
  if s:name =~#"linux*"
    set background=dark
    if !empty(glob("~/.vim/colors/jellybeans.vim"))
      color jellybeans
    endif
  elseif s:name =~#"darwin*"
    set background=light
    if !empty(glob("~/.vim/colors/mac_classic.vim"))
      color mac_classic
    endif
  endif
endif

" Mapping for Rainbow Parentheses
let g:rainbow_active = 1 " 0 if you want to enable it later via :RainbowToggle
let g:rainbow_conf = {'ctermfgs': ['blue', 'magenta', 'cyan', 'red']}
