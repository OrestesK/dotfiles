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


"Coc Completion and Documentation config
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


"NerdTree Config
"map <F2> :NERDTreeToggle<CR>
"let NERDTreeWinSize=32
"let NERDTreeWinPos="left"
"let NERDTreeShowHidden=1
"let NERDTreeAutoDeleteBuffer=1
"let NERDTreeAutoDeleteBuffer=1
"let NERDTreeMapUpdir='h'
"let NERDTreeMapDowndir='l'

"Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"Run commands based on filetype
map <F9> :call CompileRunGcc()<CR>
func! CompileRunGcc()
exec "w"
if &filetype == 'c'
exec "!gcc % -o %<"
exec "!time ./%<"
elseif &filetype == 'cpp'
exec "!g++ % -o %<"
exec "!time ./%<"
elseif &filetype == 'java'
exec "!javac %"
exec "!time java -cp %:p:h %:t:r"
"mvn exec:java -Dexec.mainClass=com.orestesk.Flaaffy
"mvn spring-boot:run
elseif &filetype == 'sh'
exec "!time bash %"
elseif &filetype == 'python'
exec "!time python2.7 %"
elseif &filetype == 'html'
exec "!firefox % &"
elseif &filetype == 'go'
exec "!go build %<"
exec "!time go run %"
elseif &filetype == 'mkd'
exec "!~/.vim/markdown.pl % > %.html &"
exec "!firefox %.html &"
endif
endfunc

"Makefile config, searches up to 1 dir up
let &makeprg = 'if [ -f Makefile ]; then make; else make -C ..; fi'

"Barbar config
let bufferline = get(g:, 'bufferline', {})
let bufferline.animation = v:false
let bufferline.auto_hide = v:true
let bufferline.icons = v:false
let bufferline.clickable = v:false
let bufferline.closable = v:false
let bufferline.minimum_padding = 1
let bufferline.maximum_padding = 1

nnoremap <silent>    <A-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <A-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <A-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <A-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <A-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <A-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <A-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <A-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <A-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <A-0> <Cmd>BufferLast<CR>

nnoremap <silent>    <A-x> <Cmd>BufferClose<CR>

"Rooter config
let g:rooter_patterns = ['=src', 'Makefile']

call plug#begin('~/.config/nvim')
 
 "Util
 Plug 'mg979/vim-visual-multi', {'branch': 'master'}
 Plug 'junegunn/fzf.vim'

 "Big Util
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'sheerun/vim-polyglot'
 Plug 'tpope/vim-fugitive'
 Plug 'romgrk/barbar.nvim'
 Plug 'airblade/vim-rooter'
 
 "Java Plugs
 Plug 'mikelue/vim-maven-plugin'

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
 "Plug 'scrooloose/nerdtree'

  call plug#end()

