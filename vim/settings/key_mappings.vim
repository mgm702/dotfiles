" ================ Key Mappings ==================
" This file contains key mappings that I like
" it is broken down by the three Vim modes
" and also includes section for plugins
" ================================================

" ======== Normal Mode Mapping ========

" Pressing ,sc will toggle and untoggle spell checking
nnoremap <leader>sc :setlocal spell!<cr>

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

" Escape with kj
inoremap kj <esc>
inoremap <C-c> <C-[>

" Split the Vim config either vertical or horizontal
nnoremap vs :vsplit<cr>
nnoremap sp :split<cr>

" Useful mappings for managing tabs
nnoremap to :tabnew<cr>

" Mapping for last search
nnoremap <leader><space> :noh<cr>

"Mapping to use tab instead of % for matching tags
nnoremap <tab> %

" Map CTRL+{h,j,k,l} keys to window switching
nnoremap <c-k> <C-w><Up>
nnoremap <c-j> <C-w><Down>
nnoremap <c-l> <C-w><Right>
nnoremap <c-h> <C-w><Left>

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

" Key mapping for Vimux plugin
nnoremap tmux :VimuxRunCommand

" Map for Syntastic Check mapping
nnoremap <leader>ss :SyntasticCheck<cr>
