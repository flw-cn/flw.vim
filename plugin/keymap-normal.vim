" 自定义快捷键 ----------------------------{{{

if ( has("unix") )
    " 把我的 Linux 环境下的功能键给激活
    exec "set <S-F1>=\033[23~"
    exec "set <S-F2>=\033[24~"
    exec "set <S-F3>=\033[25~"
    exec "set <S-F4>=\033[26~"
    exec "set <S-F5>=\033[28~"
    exec "set <S-F6>=\033[29~"
    exec "set <S-F7>=\033[31~"
    exec "set <S-F8>=\033[32~"
    exec "set <S-F9>=\033[33~"
    exec "set <S-F10>=\033[34~"
endif

" gF 在新窗口打开光标下的文件名
nmap gF <C-W>f

" 对于 vim 7.x 来说，可以让文件在新标签页打开
if version >= 700
    nmap <silent> gf <C-W>gf:tabmove<CR>
endif

" F3 开启/关闭粘贴模式，这个是老习惯了
set pastetoggle=<F3>

" Dieken 的功能
" nnoremap <F2> :g//laddexpr expand("%") . ":" . line(".") . ":" . getline(".")<CR>:lopen<CR>
" nnoremap <F3> :redir @a<CR>:g//<CR>:redir END<CR>:new<CR>:put! a<CR><CR>

" F4 做这个挺浪费的，又不常用，可以考虑去掉
map <F4> :%s/\s\+$//g<CR>:noh<CR>''

" 编辑 C/Makefile/Perl/Config/Shell 等许多格式的文件时，输入 # 字符后 vim
" 都会自作聪明地删除该行的自动缩进(如果有的话)，这样很不好，尤其是编辑 Perl
" 程序加入注释时。因此用下面的映射来“留”住 # 字符。（发现有 BUG，不过凑合能用）
inoremap # X#<LEFT><C-H><RIGHT>

" 有了这些映射，查找函数就更加方便了。
if version >= 700
    nmap <silent> <F12>s :tab cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <silent> <F12>g :tab cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <silent> <F12>c :tab cs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <silent> <F12>t :tab cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <silent> <F12>e :tab cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <silent> <F12>f :tab cs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <silent> <F12>i :tab cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <silent> <F12>d :tab cs find d <C-R>=expand("<cword>")<CR><CR>
else
    nmap <silent> <F12>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <silent> <F12>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <silent> <F12>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <silent> <F12>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <silent> <F12>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <silent> <F12>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <silent> <F12>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <silent> <F12>d :cs find d <C-R>=expand("<cword>")<CR><CR>
endif

nmap <silent> <F10> :tabe ~/vimwiki/程序员英语.mdwiki<CR>G

"}}}
