" tagbar ----{{{
" 设置 tagbar 出现在屏幕左边。
let g:tagbar_left=1
if has("win32")
    let g:tagbar_iconchars = ['+', '-']  " (default on Windows)
else
    let g:tagbar_iconchars = ['➢', '▾']  " 备用字符：  ▸
endif
" }}}
