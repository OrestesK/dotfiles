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

"Run based on filetype
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
elseif &filetype == 'dart'
  exec ":CocCommand flutter.run"
elseif &filetype == 'sh'
  exec "!time bash %"
elseif &filetype == 'python'
  exec "!time python3 %"
elseif &filetype == 'html'
  exec "!firefox % &"
elseif &filetype == 'go'
  exec "!time go run ."
elseif &filetype == 'mkd'
  exec "!~/.vim/markdown.pl % > %.html &"
  exec "!firefox %.html &"
endif
endfunc

"Makefile config, searches up to 1 dir up
let &makeprg = 'if [ -f Makefile ]; then make; else make -C ..; fi'

"Remove highlighted search results
nnoremap <CR> :let @/ = ""<CR><CR>
