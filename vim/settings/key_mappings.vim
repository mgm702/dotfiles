"key mapping for telling the current time 
map <F2> :echo 'Current time is ' . strftime('%c')<CR>

" This mapping makes it so j and k go up one line instead of one 'number' line
nnoremap j gj
nnoremap k gk
" Mapping for Easy Access to the Vimrc
" type ,ev to edit the Vimrc
nnoremap <leader>ev :vsp $MYVIMRC<cr>

" Split the Vim config either vertical or horizontal
nnoremap vs :vsplit<cr>
nnoremap sp :split<cr>

" Fast Reloading
nnoremap <leader>r :e<cr>

" Fast saving
nnoremap <leader>w :w!<cr>
nnoremap <leader>q :q!<cr>
nnoremap <leader>x :wqa<cr>

" Useful mappings for managing tabs
nnoremap <leader>to :tabnew<cr>
nnoremap <leader>tp :tabp<cr>
nnoremap <leader>tn :tabn<cr>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tm :tabmove

" Mapping for last search
nnoremap <leader><space> :noh<cr>

"Mapping to use tab instead of % for matching tags
nnoremap <tab> %
vnoremap <tab> %

" Explore folder directory mapping
nnoremap <c-e> :Explore<cr>
nnoremap <c-x> :Texplore<cr>
nnoremap ex :Explore<cr>

" In insert mode, you can use control d to do delete a whole line
" this will also move you back into insert mode
inoremap <c-d> <esc>ddoi

" In insert mode, you can escape now typing jj very quickly
inoremap <jk> <esc>

" Pressing ,sc will toggle and untoggle spell checking
map <leader>sc :setlocal spell!<cr>

" Shortcuts using <leader>
" map <leader>sn ]s
" map <leader>sp [s
" map <leader>sa zg
" map <leader>s? z=

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
nnoremap <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Jump to matching pairs easily, with Tab
nnoremap <Tab> %
vnoremap <Tab> %

" This is for saving in a read only file. just press :sw and it will initiate
" a sudo call to the bash script so you can save it
cnoremap sw w !sudo tee % >/dev/null

" Quote words under cursor
nnoremap <leader>" viW<esc>a"<esc>gvo<esc>i"<esc>gvo<esc>3l
nnoremap <leader>' viW<esc>a'<esc>gvo<esc>i'<esc>gvo<esc>3l

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
nnoremap <space> /
nnoremap <c-space> ?

" Pressing Ctrl pt will throw you in to pastetoggle so that pasting large amounts
" of text easy
set pastetoggle=<leader>pt

" Strip all trailing whitespace from a file, using ,W
nnoremap <leader>W :%s/\s\+$//<CR>:let @/=''<CR>
