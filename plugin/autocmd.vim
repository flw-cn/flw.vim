" 自动命令 -----------------------------{{{

" 打开文件时，按照 viminfo 保存的上次关闭时的光标位置重新设置光标
autocmd BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" squid 源代码存在“恶心的 TAB 与 space 混排问题”，因此需要特别设置一下
autocmd BufReadPost */*squid*/* setlocal ts=8 sts=8 sw=8

" vim 自带的 Erlang 的插件不能识别 hrl 文件？
autocmd BufNewFile,BufRead *.hrl setlocal ft=erlang

" Dancer 常见的 .tt 后缀需要标注成 HTML 语法
autocmd BufNewFile,BufRead *.tt setlocal ft=html

" QuickFix 窗口中不需要行号
autocmd FileType qf set nonumber

" 插入模式下不需要光棒
autocmd InsertEnter * setlocal nocursorline
autocmd InsertLeave * setlocal cursorline

" 只有当前窗口才显示光棒
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

autocmd FileType c,cpp setlocal path=.,/usr/local/include,/usr/include

augroup filetypedetect
    autocmd! BufRead,BufNewFile *.p6 setfiletype perl6
augroup END

" 消灭盘古之白
autocmd BufWritePre *.markdown,*.md,*.text,*.txt,*.wiki,*.cnx call PanGuSpacing()
"}}}
