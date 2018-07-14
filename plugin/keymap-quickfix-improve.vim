" QuickFix 增强 ------------------------------{{{

" 用井号来打开/关闭 quickfix 窗口
nmap <silent> # :vimgrep <cword> %<CR>:cw<CR>
nmap <silent> g# :!git grep <cword><CR>:cw<CR>
autocmd FileType qf :nmap <buffer><silent> # :windo 2match none<CR>:q<CR>

" quick fix 窗口中可以预览
autocmd FileType qf :nnoremap <buffer><silent> v <CR>zz:exec "2match QuickFixLine /\\%" . line(".") . "l/"<CR>:wincmd p<CR>
autocmd FileType qf :nnoremap <buffer><silent> <CR> <CR>
autocmd FileType qf :setlocal cursorline

" 可以跳转 quick fix 窗口中的内容
nmap <silent> <F9>     :cn<CR>
nmap <silent> <S-F9>   :cp<CR>
" }}}
