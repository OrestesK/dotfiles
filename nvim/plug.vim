call plug#begin('~/.config/nvim/plug')
"Util
 Plug 'editorconfig/editorconfig-vim'
 Plug 'mg979/vim-visual-multi', {'branch': 'master'}
 Plug 'APZelos/blamer.nvim'
 Plug 'tpope/vim-commentary'
 Plug 'tpope/vim-surround'


 "Core Util
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'junegunn/fzf.vim'

 Plug 'sheerun/vim-polyglot'
 Plug 'tpope/vim-fugitive'
 Plug 'romgrk/barbar.nvim'
 Plug 'airblade/vim-rooter'
 
"Language Specific
 "Plug 'mikelue/vim-maven-plugin'
 "Plug 'dart-lang/dart-vim-plugin'
 "Plug 'thosakwe/vim-flutter'
 Plug 'udalov/kotlin-vim'

"Appearance
 "Plug 'morhetz/gruvbox'
 Plug 'sainnhe/gruvbox-material'
 Plug 'itchyny/lightline.vim'

"Misc
 Plug 'rcarriga/nvim-notify'

"Graveyard
 
 "Plug 'andweeb/presence.nvim'
 "Plug 'vim-airline/vim-airline'
 "Plug 'michaelb/sniprun', {'do': 'bash install.sh'}
 "Plug 'preservim/nerdcommenter'
 "Plug 'scrooloose/syntastic'
 "Plug 'airblade/vim-gitgutter'
 "Plug 'scrooloose/nerdtree'

call plug#end()

