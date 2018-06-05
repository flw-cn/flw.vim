" 一个简单的 svn diff 功能
function! flw#svn#toggleDiff()
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

