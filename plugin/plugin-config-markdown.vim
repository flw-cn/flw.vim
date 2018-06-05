let g:vim_markdown_no_extensions_in_markdown = 1
let g:vim_markdown_auto_extension_ext = 'md'

let g:vim_markdown_autowrite = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toc_autofit = 1

autocmd FileType markdown setlocal conceallevel=2
autocmd FileType markdown nmap <buffer> <Enter> <Plug>Markdown_EditUrlUnderCursor
