" taglist ----{{{
" 让 taglist 对普通的 txt 文件也能够生成目录
let tlist_txt_settings = 'txt;c:content;f:figures;t:tables'
au BufRead,BufNewFile *.txt setlocal ft=txt
" 让 taglist 对 vimwiki 文件也能够生成目录
let tlist_vimwiki_settings = 'wiki;c:content'

hi MyTagListFileName guifg=black guibg=grey
" }}}
