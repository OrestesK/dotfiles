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

"Commentary
noremap <A-/> :Commentary<cr>

"Nvim tabs 
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

"Rooter 
let g:rooter_patterns = ['=src', 'Makefile']

"Fzf
nnoremap <silent> <A-f> :Files<CR>
nnoremap <silent> <A-h> :History<CR>
nnoremap <silent> <S-A-f> :Rg<CR>
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
