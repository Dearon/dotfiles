set nocompatible

call pathogen#infect()

set background=light
colorscheme solarized
set t_Co=256
let g:solarized_termcolors=256
syntax on

filetype plugin indent on

set nobackup
set nowritebackup

set hidden
set nu
set history=1000
set undolevels=1000
let mapleader=','
set hlsearch
set incsearch

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent

set backspace=indent,eol,start

" Easier split navigation
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Powerline
set encoding=utf-8
set laststatus=2
let g:Powerline_symbols='fancy'

" Supertab
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
let g:SuperTabLongestEnhanced = '1'

" Ack
nmap <leader>a <Esc>:Ack!

" NERDTree
map <F5> :NERDTreeToggle<CR>

" Tagbar
map <F6> :TagbarToggle<CR>

" Flake8
autocmd FileType python map <buffer> <F7> :call Flake8()<CR>

" Gundo
nnoremap <F8> :GundoToggle<CR>
