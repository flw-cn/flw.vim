if executable('rg')
    let g:ackprg = 'rg --vimgrep'
elseif executable('ag')
    let g:ackprg = 'ag --vimgrep'
elseif executable('ack')
    let g:ackprg = 'ack'
endif
