function! flw#ack#toggle() abort
    if empty(filter(tabpagebuflist(), 'getbufvar(v:val, "&buftype") is# "quickfix"'))
        silent exec 'Ack!'
    else
        cclose
    endif
endfunction
