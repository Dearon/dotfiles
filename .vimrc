set nocompatible
execute pathogen#infect()

" Set the Solarized color scheme
syntax on
filetype plugin indent on
set background=light
let g:solarized_termcolors=256
colorscheme solarized

" General settings
let mapleader=','

set nobackup
set nowritebackup

set nu

set hlsearch
set incsearch

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set backspace=indent,eol,start

" Powerline
set laststatus=2

" ack.vim
nmap <leader>a <Esc>:Ack! 

" Gundo
nnoremap <F5> :GundoToggle<CR>

" TagBar
map <F6> :TagbarToggle<CR>

" Supertab
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
let g:SuperTabContextDiscoverDiscovery = ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]
