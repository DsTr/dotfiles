" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" TODO: https://github.com/airblade/vim-gitgutter
"
"Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
" PHP Documentor
Plug 'tobyS/pdv', { 'for': 'php' }
" Autocomplete
Plug 'derekwyatt/vim-scala'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scalameta/coc-metals', {'do': 'yarn install --frozen-lockfile'}

" Configuration for vim-scala
au BufRead,BufNewFile *.sbt set filetype=scala
autocmd FileType json syntax match Comment +\/\/.\+$+

Plug 'tpope/vim-sensible'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'jacoborus/tender.vim' " Theme
Plug 'tpope/vim-fugitive' " Git support
Plug 'tomtom/tcomment_vim' " gc comment

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go'
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'hynek/vim-python-pep8-indent', { 'for': 'python' }
Plug 'othree/yajs.vim', {'for':'javascript'}
Plug 'othree/es.next.syntax.vim'
Plug 'othree/html5.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'elzr/vim-json'
Plug 'moll/vim-node'
Plug 'othree/javascript-libraries-syntax.vim' 
Plug 'w0rp/ale' " Linter
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Fuzyy file search
Plug 'junegunn/fzf.vim'
" Plug 'mattn/emmet-vim' html/css autocomplete
Plug 'davidhalter/jedi-vim', { 'for': 'python' }
Plug 'jremmen/vim-ripgrep'                                        " blazing fast search using ripgrep

" Rainbow Parentheses 
Plug 'luochen1990/rainbow'

" Initialize plugin system
call plug#end()
