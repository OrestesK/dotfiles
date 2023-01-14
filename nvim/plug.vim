call plug#begin('~/.config/nvim')
"Util
 Plug 'editorconfig/editorconfig-vim'
 Plug 'mg979/vim-visual-multi', {'branch': 'master'}
 Plug 'junegunn/fzf.vim'

"Big Util
 Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Plug 'dense-analysis/ale'
 Plug 'sheerun/vim-polyglot'
 Plug 'tpope/vim-fugitive'
 Plug 'romgrk/barbar.nvim'
 Plug 'airblade/vim-rooter'
 
"Java Plugs
 "Plug 'mikelue/vim-maven-plugin'

"Flutter/Dart Plugs
 "Plug 'dart-lang/dart-vim-plugin'
 "Plug 'thosakwe/vim-flutter'
 
"Kotlin Plugs
 Plug 'udalov/kotlin-vim'

"Appearance
 Plug 'morhetz/gruvbox'

"Misc
 Plug 'rcarriga/nvim-notify'

"Graveyard
 
 "Plug 'andweeb/presence.nvim'
 "Plug 'vim-airline/vim-airline'
 "Plug 'michaelb/sniprun', {'do': 'bash install.sh'}
 "Plug 'preservim/nerdcommenter'
 "Plug 'tpope/vim-surround'
 "Plug 'scrooloose/syntastic'
 "Plug 'airblade/vim-gitgutter'
 "Plug 'scrooloose/nerdtree'

call plug#end()

