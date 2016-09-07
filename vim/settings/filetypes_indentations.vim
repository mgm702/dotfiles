" ================ Relevant Filetypes ====================
au BufRead,BufNewFile *.scss set filetype=css
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.coffee set filetype=javascript
" Ruby file extensions
au BufNewFile,BufRead {Gemfile,Guardfile,Capfile,Rakefile,Thorfile,config.ru,Vagrantfile,*.prawn} set filetype=ruby
au BufNewFile,BufRead Gemfile.lock,Procfile set filetype=yaml
au BufNewFile,BufRead *_spec.rb set filetype=rspec.ruby
au BufNewFile,BufRead *_steps.rb set filetype=rspec.ruby

" ================ Indentation ======================
set autoindent
set smartindent
set smarttab
set expandtab

"Invisible Characters for spacing
set lcs=tab:▸\ ,trail:-,extends:>,precedes:<,nbsp:+

set list
" For ruby, autoindent with two spaces, always expand tabs
autocmd FileType ruby,vim,sh,bash,haml,eruby,yaml,html,hbs,javascript,json,css,sass,scss,cucumber set ai sw=2 sts=2 et
" For python and php the indentation will be set at four instead of two and expand tabs
autocmd FileType python,php set sw=4 sts=4 et

filetype plugin on
filetype indent on

set wrap       " Wrap lines
set linebreak  " Wrap lines at convenient points
