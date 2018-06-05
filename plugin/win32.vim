" Windows 专用 --------------------------{{{
if ( has("win32") )
    nmap <M-Space> :simalt ~<CR>
    autocmd EncodingChanged * if &encoding == "utf-8" | so $VIMRUNTIME/delmenu.vim | so $VIMRUNTIME/menu.vim | language message zh_CN.UTF-8 | endif
    autocmd EncodingChanged * if &encoding == "cp936" | so $VIMRUNTIME/delmenu.vim | so $VIMRUNTIME/menu.vim | language message zh_CN | endif
    nmap <A-1> 1gt
    nmap <A-2> 2gt
    nmap <A-3> 3gt
    nmap <A-4> 4gt
    nmap <A-5> 5gt
    nmap <A-6> 6gt
    nmap <A-7> 7gt
    nmap <A-8> 8gt
    nmap <A-9> 9gt
    nmap <A-0> 10gt
endif
"}}}
