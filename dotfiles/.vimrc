call plug#begin('~/.vim/plugged')
Plug 'valloric/youcompleteme', { 'do': './install.py --clang-completer --go-completer  --js-completer'}
Plug 'SirVer/ultisnips'
call plug#end()

set nu
set hlsearch
set incsearch
set nocompatible
set ignorecase
set smartcase

let g:include_set_youcompleteme_loaded = 1

let g:ycm_key_list_select_completion = ['<C-n>']    " 본래 <Tab> 이지만 ultisnip 과 충돌을 막기 위해 변경
let g:ycm_key_list_previous_completion=['<C-p>']
let g:ycm_server_python_interpreter = '/usr/local/bin/python3'
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings = 1
let g:ycm_min_num_of_chars_for_completion = 1
set completeopt=menuone
" let g:ycm_add_preview_to_completeopt = 1
" let g:ycm_autoclose_preview_window_after_insertion = 1
" let g:ycm_autoclose_preview_window_after_completion = 1
" let g:ycm_add_preview_to_completeopt = 0
let g:ycm_filetype_blacklist = {}

if !exists('g:include_set_ultisnips_loaded')
	let g:include_set_ultisnips_loaded = 1

	" Trigger configuration. <Tab> 을 쓴다면 ycm 과 키가 중복되어 제대로 기능하지 않을 수 있다. 둘 중 하나의 설정을 바꿔준다.
	let g:UltiSnipsExpandTrigger="<Tab>"
	let g:UltiSnipsJumpForwardTrigger="<Right>"
	let g:UltiSnipsJumpBackwardTrigger="<Left>"
	let g:UltiSnipsEditSplit="vertical"     " If you want :UltiSnipsEdit to split your window.
	" let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips']
	let g:UltiSnipsSnippetDirectories = ['UltiSnips']
endif
