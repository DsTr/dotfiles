
set hidden " не выгружать буфер когда переключаешься на другой
autocmd FileType json setlocal foldmethod=syntax
autocmd FileType json setlocal foldlevel=1
autocmd BufRead composer.lock setlocal ft=json
autocmd BufRead *.phtml setlocal ft=php
autocmd FileType php noremap <C-M> :w!<CR>:!/usr/bin/php %<CR>
set shiftwidth=4 " count of spaces in reintent operations	
set tabstop=4   " Width of tab if someone else put it
set softtabstop=4   " Width <tab>
set expandtab  " Make spaces on click on <tab>

set wildmenu
set wildmode=list:longest,full
map ,e :e <C-R>=expand("%:p:h") . "/" <CR>
map ,s :split <C-R>=expand("%:p:h") . "/" <CR>
"set autochdir

set backup
set backupdir=$HOME/.local/share/nvim/backup/
set undodir=$HOME/.local/share/nvim/undo//

"  What to save in session
set sessionoptions=curdir,buffers,tabpages,folds

" Выключаем надоедливый "звонок"
set novisualbell
set t_vb= 
set ignorecase 

" Navigation through windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nmap <C-_> gcc
vmap <C-_> gc

" Next/prev buffer
noremap <C-P> :bp<CR>
noremap <C-N> :bn<CR>

" Speed up movement
nmap <C-H> 5h
nmap <C-J> 5j
nmap <C-K> 5k
nmap <C-L> 5l

