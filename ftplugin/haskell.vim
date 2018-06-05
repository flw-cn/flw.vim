" 文件类型设置 --------------------------{{{
""" Haskell
" 把 True 和 False 识别为关键字而不是普通的标识符
let hs_highlight_boolean = 1
" 把基本类型的名字识别为关键字
let hs_highlight_types = 1
" 把更多相对常用的类型识别为关键字
let hs_highlight_more_types = 1
" 高亮调试函数的名字
let hs_highlight_debug = 1

" tab=2 spaces 效果更佳
autocmd FileType haskell,lhaskell,yaml setlocal shiftwidth=2 tabstop=2 softtabstop=2
"}}}
