set nobackup 
set noswapfile
set nowritebackup

set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set hidden
set inccommand=split
set encoding=utf-8
set visualbell

set mouse=a
set cursorline
set number
set relativenumber

set splitbelow splitright
set ttimeoutlen=0
set wildmenu wildmode=list:longest,full

set path+=**
set modelines=0
set autoread
au FocusGained,BufEnter * :silent! !

set foldmethod=indent
set foldnestmax=1
set foldlevelstart=1

set expandtab tabstop=4 shiftwidth=4 softtabstop=4  
set backspace=indent,eol,start
set scrolloff=2

set autoindent     
set showmatch              
set showmode showcmd
set lazyredraw

set hlsearch incsearch ignorecase smartcase        
set cc=0         
filetype plugin on
filetype plugin indent on            
syntax on                

"Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
