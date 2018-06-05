" 本人写的非常袖珍的 svn diff 功能，flw 很得意的创意 ---------{{{
""" 按 F8 查看本次修改
function! FlwSvnDiffToggle()
    if bufexists( "__SVN_DIFF__" )
        bwipeout __SVN_DIFF__
    else
        if exists("t:flwsvndiff")
            diffoff!
            let l:fileName = t:flwsvndiff
            unlet t:flwsvndiff
            exec "bwipeout " . l:fileName
        else
            let t:flwsvndiff = expand("%:p:h") . "/.svn/text-base/" . expand("%:t") . ".svn-base"
            let l:ft = &ft
            exec "silent vert diffsplit " . t:flwsvndiff
            setlocal readonly
            setlocal nomodifiable
            setlocal buftype=nofile
            exec "set ft=" . l:ft
            setlocal fdm=diff
            wincmd p
            autocmd VimResized * :wincmd =
        endif
    endif
endfunction

" 绑定 F8 成为开启、关闭 svn diff 效果的快捷键
nmap <silent> <F8> :call FlwSvnDiffToggle()<CR>
nmap <silent> <S-F8> :new __SVN_DIFF__ <CR>:read !svn diff<CR>:setlocal syntax=diff buftype=nofile<CR>gg

"}}}
