" ========= Files, Backups, and Swap Files ==========
set noswapfile                  " Makes it so no .swp file is created when working on a project
set nowb
set nobackup
set autoread

" If Focus is lost on the terminal, autosave
au FocusGained,BufEnter * :silent! !
au FocusLost,WinLeave * :silent! w
