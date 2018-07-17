" QuickFix 增强 ------------------------------{{{

" 用井号来打开/关闭 quickfix 窗口
nmap <silent> # :call flw#ack#toggle()<CR>

" 可以跳转 quick fix 窗口中的内容
nmap <silent> <F9>     :cn<CR>
nmap <silent> <S-F9>   :cp<CR>
" }}}
