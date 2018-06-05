" 快速切换头文件和源代码 -----------------------------{{{
" 非常好用！
function! flw#cpp#SwitchHeaderAndSource()
    let basename = expand( "%:r" )
    let ext = expand( "%:e" )

    let filename = ''
    if ( ext == "c" || ext == "cpp" ) && filereadable( basename . ".h" )
        let filename = basename . ".h"
    elseif ( ext == "c" || ext == "cpp" ) && filereadable( basename . ".hpp" )
        let filename = basename . ".hpp"
    elseif ( ext == "h" || ext == "hpp" ) && filereadable( basename . ".c" )
        let filename = basename . ".c"
    elseif ( ext == "h" || ext == "hpp" ) && filereadable( basename . ".cpp" )
        let filename = basename . ".cpp"
    endif

    execute "edit " . filename
endfunction
"}}}
