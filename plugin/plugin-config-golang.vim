" Godef ----{{{
let g:godef_split=3
" }}}

" vim-go ---{{{
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1
let g:go_doc_command = ["godoc"]
let g:go_def_reuse_buffer = 1
let g:go_list_type = "quickfix"

autocmd FileType go nmap gK <Plug>(go-doc-tab)
autocmd FileType go nmap gD <Plug>(go-def-tab)
autocmd FileType go nmap gI <Plug>(go-info)

" 用 K 键开启和关闭 godoc
autocmd FileType godoc nnoremap <buffer><silent> K :q<CR>

" 语法检查，需要配合 vim-syntastic/syntastic
let g:syntastic_go_checkers = ['gometalinter']
let g:syntastic_go_gometalinter_args = ['--disable-all', '--enable=vet']

function! IfErr()
  let bpos = wordcount()['cursor_bytes']
  let out = systemlist('iferr -pos ' . bpos, bufnr('%'))
  if len(out) == 1
    return
  endif
  let pos = getcurpos()
  call append(pos[1], out)
  silent normal! j=2j
  call setpos('.', pos)
  silent normal! 4j
endfunction

autocmd FileType go iabb ife <C-O>:call IfErr()<CR>
" }}}
