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

"Fzf
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

"Filetype Compiling
func! CompileRunGcc()
  exec "w"
if &filetype == 'c'
  exec "!gcc -std=c99 -Wall -Wextra -pedantic -ggdb % -o %<"
  exec "./%"
elseif &filetype == 'rust'
  exec "!cargo build"
  exec "!cargo run"
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


