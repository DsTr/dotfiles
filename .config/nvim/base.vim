color tender
highlight Normal guibg=#000001 " 纯黑背景，酷
highlight Visual guibg=#323232 ctermbg=0
highlight Todo guifg=yellow guibg=bg gui=bold

let mapleader="\<SPACE>"

set noswapfile
set cursorline
nnoremap <silent> <CR> :noh<CR><CR> " clear search highlight by type enter
set pastetoggle=<leader>v
set smartcase
set ignorecase
set termguicolors " All colors support in terminal




" RainbowParentheses {{{
    let g:rainbow_active = 1
	let g:rbpt_max = 16
	let g:rbpt_loadcmd_toggle = 0
	let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ['gray',    'RoyalBlue3'],
    \ ]

	au VimEnter * RainbowToggle
" }}}



