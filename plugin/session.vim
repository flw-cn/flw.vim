" 给 vim 增加一个类似于工程管理的功能，适合进行项目开发时使用。
" 使用方法很简单，只需要在你的工程主目录下创建一个空的 .project.vim 文件，
" 那么以后你任何时候只要在工程目录（及其子目录）下输入 vim +S 命令就可以进入工程模式。
" 工程模式下 vim 在启动时会自动加载上次退出时自动保存的所有工作状态，包括
" 当前打开的 buffer、标签页，及窗口列表，等等。
"
" 该功能是通过 vim 的 session 功能实现的，因此具体打开的内容可以通过
" sessionoptions 选项进行设置。
"
" 帮助记忆:
" vim -S 加载 Session.vim
" vim +S 进入工程模式

let s:project_file_name = ".project.vim"

if exists('g:project_file_name')
    let s:project_file_name = g:project_file_name
endif

com! S call s:ProjectMode()
function! s:ProjectMode() abort
    let s:project_path = findfile(s:project_file_name, ".;")
    if len(s:project_path) > 0
        set sessionoptions=blank,buffers,curdir,folds,help,tabpages
        silent execute "source " . s:project_path
        autocmd QuitPre * execute ":mksession! " . s:project_path
    endif
endf
