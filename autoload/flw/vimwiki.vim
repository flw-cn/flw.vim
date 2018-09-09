" 下面是对 VimWiki 打的一个补丁，目的是为了让它能够更好地支持 Markdown
" 链接语法。官方的插件不支持 [文章]() 这样的内部链接语法。
" 而这种语法是唯一能够打通 VimWiki 和 Jekyll 的关键。
" 注意这个补丁只有当 wiki 语法是 Markdown 时才应该启用。
" 可以通过下面的 autocmd 来控制。
function! flw#vimwiki#applyMarkdownPatch() abort
    let s:markdownLinkPrefix = '['
    let s:markdownLinkSuffix = ']()'

    let magic_chars = '.*[]()\^$'
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

let s:cmd = expand('<sfile>:p:h')
let s:cmd = join([s:cmd, '..', '..', 'gen-vimwiki-diary-index.pl'], '/')
let s:cmd = join([s:cmd, '~/vimwiki', '.mdwiki'], ' ')
function! flw#vimwiki#generate_diary_section() abort
    call system(s:cmd)
    call vimwiki#diary#goto_diary_index(v:count1)
endfunction
