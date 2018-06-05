" 有关着色的两个小发明 ---------{{{
" 定义高亮组
function! flw#color#defineHighlight( name, fgcolor, bgcolor, attr ) abort
    exec "hi " . a:name . " ctermfg=" . a:fgcolor . " ctermbg=" . a:bgcolor . " cterm=" . a:attr
endfunction

" 将指定区域的文字着色为事先定义好的高亮组的颜色效果
function! flw#color#colorit( name, startline, startcol, endline, endcol ) abort
    let pat = "\\%" . a:startline . "l\\%" . a:startcol . "c.*\\%" . a:endline . "l\\%" . a:endcol . "c"
    call matchadd( a:name, pat )
endfunction
"}}}
