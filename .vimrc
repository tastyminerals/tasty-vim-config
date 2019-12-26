filetype plugin indent on
syntax on

" ------[Vim config]------

set encoding=utf-8
set fileencoding=utf-8

" allow backspace in Windows OS
"set backspace=2
"set backspace=indent,eol,start

" show line numbers
set number

" show relative line numbers
set relativenumber
set hlsearch

" show existing tab with 4 spaces width
set tabstop=4
" when intending with '>', use 4 spaces width
set shiftwidth=4
" on pressing tab, insert 4 spaces
set expandtab

" set line width border
set colorcolumn=110

" Remove toolbars and scrollbars, toolbar, menubar
set guioptions-=r " scrollbars
set guioptions-=T " toolbar
set guioptions-=m " menubar
set splitbelow " split window is positioned at bottom

" Enable line numbers, curosorline and set colorscheme
set hlsearch
set cursorline

"set background=dark
"favourite themes: nighted, nordisk, sacredforest, papaya, solarized
colorscheme nighted " no gui theme (for vim)

" configure vim gui (gvim) 
if has("gui_running")
	colorscheme nighted
	set lines=60 columns=100 linespace=0
    set guifont=Iosevka\ 13
    " set guifont=Consolas\ 12
endif

" Reload .vimrc when saved it
au BufWritePost .vimrc so %

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

" set wildmenu (autocompletion for ':' vim command line mode)
set wildmenu
set wildmode=longest:list,full


" ------[Utils config]------
" prettify xml files
map <C-A-x> :%!xmllint --format -<CR>

" prettify json files
map <C-A-j> :%!python -m json.tool<CR>

" prettify file columns
map <C-A-t> :%!column -t<CR>


" ------[Plugins config]------

" vim-indent-guides
"let g:indent_guides_auto_colors=1
" enable indent guides shading
"autocmd VimEnter * :IndentGuidesEnable

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" TagBar (requires ctags)
nmap <C-\> :TagbarToggle<CR>
" disable abc sort for the tagbar
let g:tagbar_sort = 0

" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
" init syntax checkers
"let g:syntastic_python_python_exec = '/usr/bin/python'
"let g:syntastic_python_checkers = ["flake8", "pylint", "python"]
"let g:syntastic_lua_checkers = ["luac","luacheck"]
"let g:syntastic_d_checkers = ["dscanner"]

" ctrlp
set runtimepath^=~/.vim/pack/tasty/start/ctrlp.vim
map <C-b> :CtrlP<CR>
let g:ctrlp_working_path_mode = 'c'

" enables YCM completion for C-family languages
" let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
" let g:ycm_path_to_python_interpreter = '/usr/bin/python'

" NERDCommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 0
" Set a language to use its alternate delimiters by default
"let g:NERDAltDelims_java = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" dutyl
"let g:dutyl_stdImportPaths=['C:\D\dmd2\windows\bin']
" Prevent VIM from opening a console window every time a command needs to run 
let g:dutyl_dontUseVimProc=1

" vimcompletesme 
" let g:vcm_default_maps=0 
" imap <C-Space> <Plug>vim_completes_me_forward

" vim_current_word
imap <C-H> <Plug>VimCurrentWordToggle
" twins of word under cursor:
"let g:vim_current_word#highlight_twins = 1
" the word under cursor:
"let g:vim_current_word#highlight_current_word = 1

