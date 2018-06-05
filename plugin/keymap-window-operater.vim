" 下面是一些窗口操作的增强 -----------------------------------{{{

" 不错的映射，这下用标签页方便多了。
nmap <C-N>      gt
nmap <C-P>      gT

" Normal 模式下用 TAB 键切换当前窗口。
nmap <silent> <TAB>     <C-W>w
nmap <silent> <S-TAB>   <C-W>p

" 用上下左右键来调整窗口大小
" nmap <silent> <Left>  <C-W><:unlet! t:flwwinlayout<CR>
" nmap <silent> <Right> <C-W>>:unlet! t:flwwinlayout<CR>
" nmap <silent> <Up>    <C-W>+:unlet! t:flwwinlayout<CR>
" nmap <silent> <Down>  <C-W>-:unlet! t:flwwinlayout<CR>

nmap <silent> <F11> :call flw#window#zoomToggle()<CR>
imap <silent> <F11> <ESC>:call flw#window#zoomToggle()<CR>a

" 交换两个窗口，这个不太常用
" nmap <F7> <C-W>x

" }}}
