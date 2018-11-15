
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

"Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
" PHP Documentor
Plug 'tobyS/pdv', { 'for': 'php' }
" Autocomplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs'}

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
Plug 'ternjs/tern_for_vim', { 'for': 'javascript' } " JS autocomplete
Plug 'othree/javascript-libraries-syntax.vim' 
Plug 'w0rp/ale' " Lintwr
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Fuzyy file search
" Plug 'mattn/emmet-vim' html/css autocomplete
Plug 'davidhalter/jedi-vim', { 'for': 'python' }


" Initialize plugin system
call plug#end()
