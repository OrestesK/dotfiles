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

"LazyGit
nnoremap <silent> <A-g> :LazyGit<CR>

"Fzf
nnoremap <silent> <A-f> :Files<CR>
nnoremap <silent> <A-h> :History<CR>
nnoremap <silent> <S-A-f> :Rg<CR>

"CoC
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
nnoremap <silent> K :call ShowDocumentation()<CR>

"Run based on filetype
map <F9> :call CompileRunGcc()<CR>

"Remove highlighted search results
nnoremap <CR> :let @/ = ""<CR><CR>
