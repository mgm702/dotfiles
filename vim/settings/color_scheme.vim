" ================ Color Scheme ====================
syntax on
set term=screen-256color
set background=light
if !empty(glob("~/.vim/colors/mac_classic.vim"))
  color mac_classic
endif

" Mapping for Rainbow Parentheses
let g:rainbow_active = 1 " 0 if you want to enable it later via :RainbowToggle
let g:rainbow_conf = {'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick']}
