" rust.vim ---{{{
let g:rustfmt_autosave = 1
let g:syntastic_rust_checkers = ['rustc']     " 需要配合 vim-syntastic/syntastic
" let $RUST_SRC_PATH=""
autocmd FileType rust nmap gd <Plug>(rust-def)
autocmd FileType rust nmap gs <Plug>(rust-def-split)
autocmd FileType rust nmap gx <Plug>(rust-def-vertical)
autocmd FileType rust nmap K <Plug>(rust-doc)
" }}}
