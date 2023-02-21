"Barbar 
let bufferline = get(g:, 'bufferline', {})
let bufferline.animation = v:false
let bufferline.auto_hide = v:true
let bufferline.icons = v:false
let bufferline.clickable = v:false
let bufferline.closable = v:false
let bufferline.minimum_padding = 1
let bufferline.maximum_padding = 1
let fg_inactive = '#282828'  

"Blamer 
let g:blamer_enabled = 1
let g:blamer_show_in_insert_modes = 0

"Lightline
let g:lightline = {
  \ 'colorscheme': 'material',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'readonly', 'absolutepath', 'modified' ] ]
  \ }
  \ }

"Rooter 
let g:rooter_patterns = ['=src', 'Makefile']

"Makefile config, searches up to 1 dir up
let &makeprg = 'if [ -f Makefile ]; then make; else make -C ..; fi'
