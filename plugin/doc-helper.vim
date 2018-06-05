" 自己写的插件 -----------------------------------{{{

""" 本人写的非常牛逼的 K 功能重载代码，可以在 vim 内部显示各种语言的帮助
""" gK 则在新标签页内打开帮助
function! FlwHelpHelper( where )
    " 先拿下光标下的文字
    let l:word = expand( "<cWORD>" )

    " 再取出疑似函数名/模块名的部分和疑似方法的部分
    if &ft == "go"
        let l:lists = matchlist( l:word, "\\([_a-zA-Z0-9:/.]\\+\\)\\(->\\([_a-zA-Z0-9]\\+\\)\\)\\?" )
    else
        let l:lists = matchlist( l:word, "\\([_a-zA-Z0-9:]\\+\\)\\(->\\([_a-zA-Z0-9]\\+\\)\\)\\?" )
    endif

    let l:name = l:lists[1]
    let l:method = l:lists[3]

    let l:progList = []

    if &ft == "perl"
        if match( l:name, "::" ) != -1
            " 函数里是不可能有 :: 的，不用想了，一定是模块
            let l:progList += [ [ "perldoc -u ", "pod" ] ]
        elseif strlen( l:method )
            " 有方法的，一定是模块了
            let l:progList += [ [ "perldoc -u ", "pod" ] ]
        elseif match( l:name, "[A-Z]" ) != -1
            " 有大写字母，那一定是模块了，Perl buildin 函数的名称全都是小写字母的
            let l:progList += [ [ "perldoc -u ", "pod" ] ]
        else
            " 剩下的，有可能是函数，也有可能是模块，
            " 但是考虑到这样的模块较少，因此先优先查函数
            let l:progList += [ [ "perldoc -u -f ", "pod" ], [ "perldoc -u ", "pod" ] ]
        endif
    endif

    if &ft == "python"
         let l:progList += [ [ "python -c \"import sys; a = sys.argv[-1]; b = a.find('.') > -1 and 1 or 0; m = b == 1 and '.'.join(a.split('.')[:-1]) or a; exec( 'import '+m+';help('+a+')' )\" ", "man" ] ]
    endif

    if &ft == "go"
        if match( l:name, "\." ) != -1
            let l:progList += [ [ "go doc ", "man" ] ]
        else
            let l:progList += [ [ "godoc ", "man" ], [ "go doc ", "man" ] ]
        endif
    endif

    if &ft == "erlang"
        if match( l:name, ":" ) != -1
            " erlang 的模块方法
            let l:lists = matchlist( l:name, "\\([_a-zA-Z0-9:]\\+\\):\\([_a-zA-Z0-9]\\+\\)" )
            let l:name = l:lists[1]
            let l:method = l:lists[2]
        endif
        let l:progList += [ [ "PAGER=\"col -b\" erl -man ", "man" ] ]
    endif

    let l:progList += [ [ "PAGER=\"col -b\" man 3 ", "man" ] ]
    let l:progList += [ [ "PAGER=\"col -b\" man 2 ", "man" ] ]
    let l:progList += [ [ "PAGER=\"col -b\" man ", "man" ] ]

    let l:found = 0
    " 下面调用外部命令，取帮助信息
    for l:prog in l:progList
        let l:progName = l:prog[0]
        let l:fileType = l:prog[1]
        let l:cmd = l:progName . l:name
        let l:lines = system( l:cmd )
        if !v:shell_error
            if a:where ==? "inNewTab"
                tabe
            elseif a:where ==? "Vertical"
                rightbelow new
            else
                above new
            endif
            setlocal buftype=nofile
            setlocal ts=8
            execute "setlocal ft=" . l:fileType
            call append( 0, split( l:lines, "\n" ) )
            normal gg
            if strlen(l:method)
                if l:fileType == "pod"
                    call search( "\\(=\\(item\\|head\\)\\d*\\s\\+\\)\\@<=" . l:method . "\\>" )
                elseif l:fileType == "man"
                    call search( "\\(^\\s\\+\\)\\@<=" . l:method . "\\>" )
                endif
                normal zt
            endif
            let l:found = 1
            break
        endif
    endfor

    if !l:found
        echohl ErrorMsg | echomsg "没有帮助信息。" | echohl None
    endif

endfunction

autocmd FileType c,perl,erlang,python nmap <silent> K :call FlwHelpHelper( "" )<CR>
autocmd FileType c,perl,erlang,python nmap <silent> gK :call FlwHelpHelper( "InNewTab" )<CR>

"}}}
