" Turn off Vi compatibility mode
set nocompatible

" Run Pathogen so it can load the other plugins
call pathogen#infect()

" Make sure Vim is running in 256 colors, set the colorscheme and turn on
" highlighting
set t_Co=256
set background=light
colorscheme solarized
syntax on
filetype plugin indent on

" Disable Vim's backup files to reduce clutter
set nobackup
set nowritebackup

" Misc settings
let mapleader=',' " Change the mapleader to a easier key
set nu " Turn on line numbers
set visualbell t_vb= " Turn off Vim's bell
set backspace=2 " Make sure that backspace works correctly
set hidden " Keeps buffers alive
set tabstop=4 " Keep tabs equal to 4 spaces
set autoindent " Keep the indentation level the same
set copyindent " Keep the indentation level the same
set shiftwidth=4 " Make sure autoindentation is also 4 spaces
set shiftround " Helps when indenting with < and >
set showmatch " Shows the start (or end) of matching brackets
set smartcase " Allows a all lower-case search to be case-insensitive
set hlsearch " Highlights search term
set incsearch " Searches while typing

" Makes Vim remember more
set history=1000
set undolevels=1000

" Makes ; behave like : in normal mode
nnoremap ; :

" Powerline settings
set encoding=utf-8
set laststatus=2
let g:Powerline_symbols='fancy'

" NERDTree settings
"map <leader><F5> :NERDTreeToggle<CR>
map <F5> :NERDTreeToggle<CR>

" Tagbar settings
"map <leader><F6> :TagbarToggle<CR>
map <F6> :TagbarToggle<CR>

" Vimwiki settings
"map <leader><F8> :VimwikiIndex<CR>
map <F8> :VimwikiIndex<CR>
