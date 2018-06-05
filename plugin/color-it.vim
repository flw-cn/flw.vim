" 有关着色的两个小发明 ---------{{{
function! DefineHighlightx( name, fgcolor, bgcolor, attr )
    exec "hi " . a:name . " ctermfg=" . a:fgcolor . " ctermbg=" . a:bgcolor . " cterm=" . a:attr
endfunction

function! Coloritx( name, startline, startcol, endline, endcol )
    let pat = "\\%" . a:startline . "l\\%" . a:startcol . "c.*\\%" . a:endline . "l\\%" . a:endcol . "c"
    call matchadd( a:name, pat )
endfunction
"}}}
