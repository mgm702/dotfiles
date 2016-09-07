" ================ Status Line ====================
" Format the status line

function! FileSize()
     let bytes = getfsize(expand("%:p"))
     if bytes <= 0
         return ""
     endif
     if bytes < 1024
         return bytes . "B"
     elseif bytes < 1048576 && bytes >= 1024
        return (bytes / 1024) . "KB"
     elseif bytes < 1073741824 && bytes >= 1048576
        return (bytes / 1048576) . "MB"
     endif
endfunction

set statusline=
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%t%*            "full path
set statusline +=%2*\ %{fugitive#statusline()}%* "git branch
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%3*%{FileSize()}%*     "File Size in (KB)

if !empty(glob("~/.vim/bundle/vim-airline/plugin/airline.vim"))
  au VimEnter * call AirlineStatusBar()
endif
