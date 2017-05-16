" init pathogen plugin manager
execute pathogen#infect()
execute pathogen#helptags()

syntax on
filetype plugin indent on

" show existing tab with 4 spaces width
set tabstop=4
" when intending with '>', use 4 spaces width
set shiftwidth=4
" on pressing tab, insert 4 spaces
set expandtab

" Remove toolbars and scrollbars
set guioptions-=r " Scrollbars
set guioptions-=T " Toolbar
set guioptions-=m " Menubar

" Enable line numbers, curosorline and set colorscheme
set number
set hlsearch
"set cursorline
colorscheme Chasing_Logic

"indent-guides plugin
let g:indent_guides_auto_colors = 1

" Reload .vimrc when saved it
au BufWritePost .vimrc so %

" set gui font
if has("gui_running")
	set guioptions-=T " no toolbar
	colorscheme atom
	set lines=60 columns=150 linespace=0
	set guifont=Inconsolata\ 14
endif	

" NERDTreeToggle hotkey
map <C-n> :NERDTreeToggle<CR>

" TagBar hotkey
nmap <C-\> :TagbarToggle<CR>

" Syntastic checker config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" init syntax checkers
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_lua_checkers = ["luac","luacheck"]

" vim-airline persistent
set laststatus=2

" ctrlp config
set runtimepath^=~/.vim/bundle/ctrlp.vim
map <C-b> :CtrlP<CR>
"let g:ctrlp_map = "<c-b>"
"let g:ctrlp_map = "CtrlP"
let g:ctrlp_working_path_mode = 'c'

" switch among buffers with CTRL
map <C-[> :bnext<CR>
map <C-]> :bprev<CR>

" Quick write session with F2
map <F2> :mksession! ~/vim_session <cr>
" And load session with F3
map <F3> :source ~/vim_session <cr>

" Make double yy copy to system clipboard
nnoremap yy yy"+yy
vnoremap y ygv"+y

" strip the trailing whitespace on save
autocmd BufWritePost *.py :%s/\s\+$//e

" disable text auto wrapping
"set formatoptions-=t
set wrap!

" show the number of selected lines in VISUAL mode
set showcmd

" enables YCM completion for C-family languages
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

