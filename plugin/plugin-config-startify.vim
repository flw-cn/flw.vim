" 定制菜单顺序，把工程菜单放在最前面
let g:startify_lists = [
      \ { 'type': 'sessions',  'header': [   'Projects:']       },
      \ { 'type': 'commands',  'header': [   'Commands:']       },
      \ { 'type': 'dir',       'header': [   'MRU files in '. getcwd()] },
      \ { 'type': 'files',     'header': [   'MRU files:']            },
      \ { 'type': 'bookmarks', 'header': [   'Bookmarks:']      },
      \ ]

" 按照修改时间排序工程
let g:startify_session_sort = 0

" 退出 vim 时自动保存会话（工程）
let g:startify_session_persistence = 1

" 自动切换到 .git 所在目录
let g:startify_change_to_vcs_root = 1

" 打开光棒，操作更方便一些
autocmd User Startified setlocal cursorline

" 还有一些实用的选项
" let g:startify_commands = []
" let g:startify_session_before_save = []
" let g:startify_session_savecmds = []
" let g:startify_session_remove_lines = []

" 每日格言
let g:startify_custom_header = 
    \ map(systemlist("fortune | sed 's/\x1b[^m]*m//g'"), '"    ". v:val')

" 工程加载完成后，自动修改 tmux 标题
autocmd SessionLoadPost	* call s:AutoRenameTmux()

function! s:AutoRenameTmux() abort
    let s:name = fnamemodify(v:this_session, ":t")
    call system("tmux rename-window " . s:name )
endf
