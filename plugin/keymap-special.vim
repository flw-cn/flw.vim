" 聪明的映射 -----------------------------{{{

" 跟移动光标一样整体移动行。
nmap <C-j> mz:m+<cr>`z
nmap <C-k> mz:m-2<cr>`z
vmap <C-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <C-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Insert 模式下，用 Ctrl+S 来保存文档
imap <C-S> <C-O>:w<CR>

" Visual 模式下用 TAB 来缩进代码
vmap <silent> <TAB>     >gv
vmap <silent> <S-TAB>   <gv

" Visual 模式下用 c 和 C 来注释、取消注释代码
autocmd FileType perl vmap <silent> c :<BS><BS><BS><BS><BS>let FlwSearchBak=@/\|'<,'>s/^/#/gi\|call histdel("search", -1)\|let @/ = FlwSearchBak<CR>
autocmd FileType perl vmap <silent> C :<BS><BS><BS><BS><BS>let FlwSearchBak=@/\|'<,'>s/^#//gi\|call histdel("search", -1)\|let @/ = FlwSearchBak<CR>
autocmd FileType vim vmap <silent> c :<BS><BS><BS><BS><BS>let FlwSearchBak=@/\|'<,'>s/^/"/gi\|call histdel("search", -1)\|let @/ = FlwSearchBak<CR>
autocmd FileType vim vmap <silent> C :<BS><BS><BS><BS><BS>let FlwSearchBak=@/\|'<,'>s/^"//gi\|call histdel("search", -1)\|let @/ = FlwSearchBak<CR>
autocmd FileType javascript,c,cpp vmap <silent> c :<BS><BS><BS><BS><BS>let FlwSearchBak=@/\|'<,'>s/^/\/\//gi\|call histdel("search", -1)\|let @/ = FlwSearchBak<CR>
autocmd FileType javascript,c,cpp vmap <silent> C :<BS><BS><BS><BS><BS>let FlwSearchBak=@/\|'<,'>s/^\/\///gi\|call histdel("search", -1)\|let @/ = FlwSearchBak<CR>

let os=substitute(system('uname'), '\n', '', '')
if os == 'Darwin' || os == 'Mac'
    " 在 Mac 下映射 Ctrl+D 为语音朗读光标下的单词
    nmap <silent> <C-D> :call system("say -v Tom",expand("<cword>"))<CR>
    " 映射 v 模式下的 M 键预览 mermaid 代码
    vmap <silent> M :call writefile( getline("'<", "'>"), "/tmp/foo.mmd" )<CR>:echo "正在生成并打开图片 ..."<CR>:call system("mermaid /tmp/foo.mmd -o /tmp/ && open /tmp/foo.mmd.png")<CR>:echo "完成。"<CR>
endif

autocmd FileType alda nmap <silent> <F5> :call system("alda play --file " . expand("%"))<CR>

" }}}

" 各位 vim 朋友，下面这些快捷键过于个性化，请酌情留用 -------------------{{{

" 下面一些映射用到了逗号，会掩盖原有的逗号的含义，因此用两个逗号来完成原来的逗号的功能。
nnoremap <silent> ,, ,

" Q 不保存退出，X 保存退出
nmap Q :q!<CR>
nmap X :x<CR>

" 我老是习惯用 Ctrl+O 跳回原来，但是不如 Ctrl+T 好使。这么一映射，好使多了。
nmap <C-O> <C-T>

" 试试看把 0 改成 ^ 效果怎么样。
map 0 ^
noremap ) 0

" F 开启 Buffer Explorer
nmap F :BufExplorer<CR>
nnoremap <silent> ,F F
nnoremap <silent> ,f F
autocmd BufEnter \[BufExplorer\] nmap <buffer><silent> F q

" Tag List 打开以后，光标停留在 Tag List 窗口
let g:Tlist_GainFocus_On_ToggleOpen=1
" T 开启/关闭 taglist/tagbar
" nnoremap <silent> T :TlistToggle<CR>
" 用 TAB 键可以从 tag list 窗口跳出来
" autocmd BufEnter __Tag_List__ nnoremap <buffer><silent> <TAB> :wincmd w<CR>

" T 开启/关闭 tagbar
nnoremap <silent> T :TagbarToggle<CR>

" M 开启/关闭 MRU
nmap <silent> M :MRU<CR>
nnoremap <silent> ,M M
autocmd BufEnter __MRU_Files__ nnoremap <buffer><silent> M :q<CR>

" C 开启/关闭日历
nmap <silent> C :Calendar<CR>
nnoremap <silent> ,C C
autocmd BufEnter __Calendar nnoremap <buffer><silent> C :q<CR>

" 空格键勾上或者去掉 TODO LIST 项目
autocmd FileType vimwiki map <buffer><silent> <Space> <Plug>VimwikiToggleListItem

" 在 Vimwiki 中，让插入模式的 TAB 键更智能
" TODO ...

" }}}
