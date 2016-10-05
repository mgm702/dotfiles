" ================ Key Mappings ==================

" Pressing ,sc will toggle and untoggle spell checking
map <leader>sc :setlocal spell!<cr>

" ======== Normal Mode Mapping ========

" This disables the arrow keys in normal mode
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" Strip all trailing whitespace from a file, using ,W
nnoremap <leader>W :%s/\s\+$//<CR>:let @/=''<CR>

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
nnoremap <space> /
nnoremap <c-space> ?

" Quote words under cursor
nnoremap <leader>" viW<esc>a"<esc>gvo<esc>i"<esc>gvo<esc>3l
nnoremap <leader>' viW<esc>a'<esc>gvo<esc>i'<esc>gvo<esc>3l


nnoremap ex :Explore<cr>
nnoremap tex :Texplore<cr>
nnoremap vex :Vexplore<cr>

" This mapping makes it so j and k go up one line instead of one 'number' line
nnoremap j gj
nnoremap k gk

" Split the Vim config either vertical or horizontal
nnoremap vs :vsplit<cr>
nnoremap sp :split<cr>

" Useful mappings for managing tabs
nnoremap <leader>to :tabnew<cr>
nnoremap <leader>tp :tabp<cr>
nnoremap <leader>tn :tabn<cr>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tm :tabmove

nnoremap to :tabnew<cr>
nnoremap tp :tabp<cr>
nnoremap tn :tabn<cr>

" Mapping for last search
nnoremap <leader><space> :noh<cr>

"Mapping to use tab instead of % for matching tags
nnoremap <tab> %

" ======== Visual Mode Mapping ========

"Mapping to use tab instead of % for matching tags
vnoremap <tab> %

" ======== Insert Mode Mapping ========

" In insert mode, you can use control d to do delete a whole line
inoremap <c-d> <esc>ddoi


" ======== Plugin Key Mapping ========

" Useful mapping for Fuzzy finder search options
map <c-f>      :FufCoverageFile<cr>
nnoremap <leader>fb :FufBuffer<cr>
nnoremap <leader>ff :FufFile<cr>
nnoremap <leader>fd :FufDir<cr>

" Mapping for Obsession commands
nnoremap <leader>b :Obsess<cr>
nnoremap <leader>bs :Obsess!<cr>

" Diff tab management: open the current git diff in a tab
command! GdiffInTab tabedit %|vsplit|Gdiff
nnoremap <leader>d :GdiffInTab<cr>
nnoremap <leader>D :tabclose<cr>
