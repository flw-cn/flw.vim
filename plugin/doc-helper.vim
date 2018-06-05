" 自己写的插件 -----------------------------------{{{

autocmd FileType c,perl,erlang,python nmap <silent> K :call flw#doc#help( "" )<CR>
autocmd FileType c,perl,erlang,python nmap <silent> gK :call flw#doc#help( "InNewTab" )<CR>

"}}}
