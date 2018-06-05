" 通过 YouCompleteMe 实现自动完成
let g:ycm_auto_trigger = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_always_populate_location_list = 1
let g:ycm_open_loclist_on_ycm_diags = 1

" 下一个候选和上一个候选的快捷键
let g:ycm_key_list_select_completion = ['<Tab>']
let g:ycm_key_list_previous_completion = ['<S-Tab>']

" 关联 Ultisnips 的查询结果，也作为自动完成的候选
let g:ycm_use_ultisnips_completer = 1

" 通过 Ultisnips 来实现代码片段的自动完成
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"
" 定制 :UltiSnipsEdit 的行为
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir = $HOME.'/.vim/bundle/flw.vim/snips'
