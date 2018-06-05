" Vimwiki ---{{{
highlight VimwikiBold cterm=bold,reverse
let g:vimwiki_use_mouse                 = 1     " 支持鼠标
let g:vimwiki_camel_case                = 0     " 不再采用骆驼表示法自动识别条目
let g:vimwiki_folding                   = 1     " 开启折叠功能
let g:vimwiki_fold_lists                = 1     " 列表也要折叠
let g:vimwiki_hl_headers                = 1     " 章节标题高亮支持
let g:vimwiki_hl_cb_checked             = 1     " 已完成的 TODO 项变灰
let g:markdown_enable_spell_checking    = 0     " 关闭 VimWiki 中的 MarkDown 的拼写检查

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

" 下面是对 VimWiki 打的一个补丁，目的是为了让它能够更好地支持 Markdown
" 链接语法。官方的插件不支持 [文章]() 这样的内部链接语法。
" 而这种语法是唯一能够打通 VimWiki 和 Jekyll 的关键。
" 注意这个补丁只有当 wiki 语法是 Markdown 时才应该启用。
" 可以通过下面的 autocmd 来控制。
function! s:patchVimwiki()
    let s:markdownLinkPrefix = '['
    let s:markdownLinkSuffix = ']()'

    let magic_chars = '.*[]\^$'
    let valid_chars = '[^\\]'

    let s:markdownLinkPrefix = escape(s:markdownLinkPrefix, magic_chars)
    let s:markdownLinkSuffix = escape(s:markdownLinkSuffix, magic_chars)
    let s:markdownLinkUrl = valid_chars.'\{-}'

    let s:markdownLink = s:markdownLinkPrefix . s:markdownLinkUrl . s:markdownLinkSuffix
    let s:markdownLinkMatchUrl = s:markdownLinkPrefix. '\zs' . s:markdownLinkUrl . '\ze' . s:markdownLinkSuffix

    let s:mkd_syntax = g:vimwiki_syntax_variables['markdown']
    let s:mkd_syntax.rxWikiLink = s:markdownLink
    let s:mkd_syntax.rxWikiLinkMatchUrl = s:markdownLinkMatchUrl
    let s:mkd_syntax.rxWikiLinkMatchDescr = s:markdownLinkMatchUrl
endfunction

" 可以通过注释掉下面这行代码来取消应用补丁。
autocmd FileType vimwiki call s:patchVimwiki()
" }}}
