" Godef ----{{{
let g:godef_split=3
" }}}

" vim-go ---{{{
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1
let g:go_doc_command = ["godoc"]
let g:go_def_reuse_buffer = 1
let g:go_list_type = "quickfix"

let g:go_highlight_extra_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1

autocmd FileType go nmap gK <Plug>(go-doc-tab)
autocmd FileType go nmap gD <Plug>(go-def-tab)
autocmd FileType go nmap gI <Plug>(go-info)

" 用 K 键开启和关闭 godoc
autocmd FileType godoc nnoremap <buffer><silent> K :q<CR>

" 语法检查，需要配合 vim-syntastic/syntastic
let g:syntastic_go_checkers = ['gometalinter']
let g:syntastic_go_gometalinter_args = ['--disable-all', '--enable=vet']

autocmd FileType go iabb ife <C-O><Plug>(go-iferr)
autocmd FileType go nmap <F2> <Plug>(go-alternate-edit)
autocmd FileType go nmap <F8> <Plug>(go-coverage-toggle)
" }}}
