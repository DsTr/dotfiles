
runtime plugs.vim
runtime base.vim
runtime common.vim

let g:phpcd_php_cli_executable = '/usr/local/opt/php71/bin/php'
let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

let g:airline#extensions#tabline#enabled = 1

" NERD Tree {{{
nnoremap <silent> <leader>e :NERDTreeToggle<CR>
nnoremap <silent> <leader>f :NERDTreeFind<CR>
let NERDTreeMinimalUI = 1
let NERDTreeChDirMode = 2
" }}}

" deoplete {{{
let g:deoplete#enable_at_startup = 1
let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
let g:deoplete#ignore_sources.php = ['omni']
" }}}

" Tagbar {{{
nnoremap <silent> <leader>t :TagbarToggle<CR>
let g:tagbar_compact = 1
let g:tagbar_sort = 0
"{{{
let g:tagbar_type_php = {
	\ 'ctagsbin'  : 'phpctags',
	\ 'ctagsargs' : '-f -',
	\ 'kinds'     : [
		\ 'd:Constants:0:0',
		\ 'v:Variables:0:0',
		\ 'f:Functions:1',
		\ 'i:Interfaces:0',
		\ 'c:Classes:0',
		\ 'p:Properties:0:0',
		\ 'm:Methods:1',
		\ 'n:Namespaces:0',
		\ 't:Traits:0',
	\ ],
	\ 'sro'        : '::',
	\ 'kind2scope' : {
		\ 'c' : 'class',
		\ 'm' : 'method',
		\ 'f' : 'function',
		\ 'i' : 'interface',
		\ 'n' : 'namespace',
		\ 't' : 'trait',
	\ },
	\ 'scope2kind' : {
		\ 'class'     : 'c',
		\ 'method'    : 'm',
		\ 'function'  : 'f',
		\ 'interface' : 'i',
		\ 'namespace' : 'n',
		\ 'trait'     : 't',
	\ }
\ }
"}}}
" }}}

command! DiffSaved vert new | set bt=nofile | r # | 0d_ | diffthis
			\ | wincmd p | diffthis


" fzf {{{
nnoremap <silent> <C-p> :FZF<CR>
nnoremap <silent> <C-u> :FZFMru<CR>
let g:fzf_mru_file_list_size = 100
function! s:buflist()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction

function! s:bufopen(e)
  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction

nnoremap <silent> <Leader><Enter> :call fzf#run({
\   'source':  reverse(<sid>buflist()),
\   'sink':    function('<sid>bufopen'),
\   'options': '+m',
\   'down':    len(<sid>buflist()) + 2
\ })<CR>

command! FZFMru call fzf#run({
\ 'source':  reverse(s:all_files()),
\ 'sink':    'edit',
\ 'options': '-m -x +s',
\ 'down':    '40%' })

function! s:all_files()
  return extend(
  \ filter(copy(v:oldfiles),
  \        "v:val !~ 'fugitive:\\|NERD_tree\\|^/tmp/\\|.git/'"),
  \ map(filter(range(1, bufnr('$')), 'buflisted(v:val)'), 'bufname(v:val)'))
endfunction

" }}}

