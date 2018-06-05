" MRU ----{{{
let MRU_Max_Entries = 500           " 500 个文件，足够用了吧。关键是要把一些没用的过滤掉
let MRU_Window_Height = 10          " 窗口高度设置成 10 个文件吧
let MRU_Add_Menu = 0                " 不需要菜单
" let MRU_Include_Files = ''        " 需要精心设计一下，结合 Include 和 Exclude，控制好文件数量，这样查找起来就更方便了。
let MRU_Exclude_Files = '\.wiki$\|^/tmp/.*\|^/var/tmp/.*\|^.:\\Documents and Settings\\.*\\Local Settings\\Temp\.*'

au BufEnter __MRU_Files__ setl cul  " MRU 窗口内还是有个光棒比较好
au BufEnter __MRU_Files__ setl nonu " MRU 窗口里面就不要数字了
" }}}
