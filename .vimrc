" Colors {{{
syntax on
filetype on
colorscheme elflord
" }}}
" Tabs & Indentation {{{
set tabstop=2		  " # of visual spaces per TAB
set shiftwidth=2	" # of spaces in a TAB
set expandtab		  " tabs are spaces
set autoindent
set smartindent
" }}}
" UI Config {{{
set number		    " line numbers
set showcmd		    " show command in bottom bar
set wildmenu		  " visual autocomplete for cmd menu
set lazyredraw		" redraw only when needed
set showmatch		  " highlight matching [{()}]
" autocomplete {}
inoremap {<CR> {<CR>}<ESC><UP>o
" Uncomment to automatically remove trailing whitespace
" (may be a bad idea)
" autocmd BufWritePre *.c,*.cc,*.cpp,*.py %s/\s\+$//ge
" }}}
" Searching {{{
set incsearch		  " incremental search
set hlsearch		  " highlight matches
set ignorecase
set smartcase
" }}}
" Folding {{{
set foldenable
set foldlevelstart=10
set foldmethod=indent
" }}}
" Windows {{{
set splitbelow    " split window below
set splitright    " split window right
" }}}

" Uncomment the following to have Vim jump to the last position when
" reopening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Plugins {{{
call plug#begin()
Plug 'tomtom/tcomment_vim'
Plug 'flazz/vim-colorschemes'
Plug 'ycm-core/YouCompleteMe'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()
" }}}
