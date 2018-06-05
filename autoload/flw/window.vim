" 窗口放大缩小，模仿 Turbo C 风格的。
function! flw#window#zoomToggle()
    if exists("t:flwwinlayout")
        execute t:flwwinlayout
        unlet t:flwwinlayout
    else
        let t:flwwinlayout=winrestcmd()
        execute "normal \<C-W>_\<C-W>|"
    endif
endfunction
