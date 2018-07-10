function! flw#lf#LF()
    let temp = tempname()
    let colors = 'LSCOLORS=GxfxcxdxCxegedabagacad'
    exec 'silent !env ' . colors . ' lf -selection-path=' . shellescape(temp)
    if !filereadable(temp)
        redraw!
        return
    endif
    let names = readfile(temp)
    if empty(names)
        redraw!
        return
    endif
    exec 'edit ' . fnameescape(names[0])
    for name in names[1:]
        exec 'argadd ' . fnameescape(name)
    endfor
    redraw!
endfunction
