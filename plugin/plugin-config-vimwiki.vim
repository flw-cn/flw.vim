" Vimwiki ---{{{
highlight VimwikiBold cterm=bold,reverse
let g:vimwiki_use_mouse                 = 1     " 支持鼠标
let g:vimwiki_camel_case                = 0     " 不再采用骆驼表示法自动识别条目
let g:vimwiki_folding                   = 1     " 开启折叠功能
let g:vimwiki_fold_lists                = 1     " 列表也要折叠
let g:vimwiki_hl_headers                = 1     " 章节标题高亮支持
let g:vimwiki_hl_cb_checked             = 1     " 已完成的 TODO 项变灰
let g:markdown_enable_spell_checking    = 0     " 关闭 VimWiki 中的 MarkDown 的拼写检查

" 禁用原有的功能
nmap <Plug> <Plug>VimwikiDiaryGenerateLinks

let s:cmd = "~/.vim/bundle/flw.vim/gen-vimwiki-diary-index.pl ~/vimwiki .mdwiki"
execute "nmap <silent><unique> <Leader>w<Leader>i :call system('" . s:cmd . "')<CR>:VimwikiDiaryIndex<CR>"

let g:vimwiki_ext2syntax = {'.mdwiki': 'markdown', '.wiki': 'default'}

" 定义第一个 wiki
let s:wiki1 = {}
let s:wiki1.path              = '~/vimwiki/'
let s:wiki1.path_html         = '~/vimwiki/html/'
let s:wiki1.syntax            = 'markdown'
let s:wiki1.ext               = '.mdwiki'

let s:wiki1.nested_syntaxes = {'python': 'python', 'c': 'c', 'sh': 'sh', 'perl': 'perl', 'scheme': 'scheme', 'yaml': 'yaml'}

" 以后可以如法炮制定义更多的 wiki

" 定义 wiki 列表
let g:vimwiki_list = [s:wiki1]

" 可以通过注释掉下面这行代码来取消应用补丁。
autocmd FileType vimwiki call flw#vimwiki#applyMarkdownPatch()
" }}}
