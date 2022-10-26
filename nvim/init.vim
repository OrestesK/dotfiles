set nobackup
set nowritebackup
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set cursorline
set hidden
set inccommand=split
set mouse=a
set number
set relativenumber
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu
"
set expandtab
set shiftwidth=4
set softtabstop=4     
set tabstop=4
"
set showmatch              
set ignorecase            
set smartcase
set hlsearch             
set incsearch           
set autoindent     
set relativenumber
set cc=0         
set ttyfast
filetype plugin on
filetype plugin indent on            
syntax on                

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
nnoremap <silent> K :call ShowDocumentation()<CR>
autocmd CursorHold * silent call CocActionAsync('highlight')

nnoremap <CR> :let @/ = ""<CR><CR>

map <F2> :NERDTreeToggle<CR>
let NERDTreeWinSize=32
let NERDTreeWinPos="left"
let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeAutoDeleteBuffer=1

"Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

autocmd FileType java nnoremap <buffer> <F9> :exec '!javac' shellescape(expand('%'), 1) '&& java' shellescape(expand('%:r'), 1)<cr>

call plug#begin('~/.config/nvim')
 
 "Util
 Plug 'scrooloose/nerdtree'
 Plug 'mg979/vim-visual-multi', {'branch': 'master'}
 Plug 'junegunn/fzf.vim'

 "Big Util
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'sheerun/vim-polyglot'
 Plug 'tpope/vim-fugitive'


 "Appearance
 Plug 'morhetz/gruvbox'

 "Misc
 Plug 'rcarriga/nvim-notify'
 Plug 'andweeb/presence.nvim'

 "Plug Storage
 
 "Plug 'vim-airline/vim-airline'
 "Plug 'michaelb/sniprun', {'do': 'bash install.sh'}
 "Plug 'preservim/nerdcommenter'
 "Plug 'tpope/vim-surround'
 "Plug 'scrooloose/syntastic'
 "Plug 'airblade/vim-gitgutter'

  call plug#end()

