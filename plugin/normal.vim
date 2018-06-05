" 常规设置（编辑与外观）--------------------------{{{

" 不兼容 vi
set nocompatible
" 用空格代替 TAB
set expandtab
" 整体左移或者右移时，每次 4 个空格
set shiftwidth=4
" TAB 键按 4 空格对齐
set tabstop=4
set softtabstop=4
set smarttab

let os=substitute(system('uname'), '\n', '', '')
if os == 'Darwin' || os == 'Mac'
    " 对于 Unicode 字符中，宽度含义有歧义的字符，统统显示为双字节宽
    set ambiwidth=double
endif

" 和系统剪切板交互
set clipboard=unnamed

" 文件写入成功后，不保留备份文件
set nobackup
" 直接写原文件，不先建立备份
set nowritebackup
" 不要交换文件
set noswapfile

" 让 GitGutter 等插件的界面更新速度更快
set updatetime=100

" C 语法格式的自动缩进
set cindent
" 据说比 cindent 还好用。
set smartindent
" 自动缩进
set autoindent

" 在状态栏显示正在输入的命令
set showcmd

" 通过 lightline 插件来显示 mode，所以这里不显示 mode，可以节省一点空间
set noshowmode

" c 指令（change）时，末尾显示 $ 符号
set cpoptions+=$

" 光标移动距离屏幕顶部或底部 10 行时，开始滚动
set scrolloff=10

" 打开命令行补全菜单（出现在状态栏上）
set wildmenu
" 总是显示 ruler 行。
set ruler
" 命令行高度
set cmdheight=1

" 用退格键可以删除自动缩进、换行符、越过编辑起始点
set backspace=indent,eol,start

" 出错时不出声
set noerrorbells
set novisualbell
set t_vb=

" 关闭碍眼的高亮显示配对括号
let loaded_matchparen = 1

" 仅在 Normal 模式和 Visual 模式下才可以用鼠标
" 这意味着要想用鼠标复制到剪切板的话，只需要按
" i 进入插入模式，或者按 : 进入命令行模式就可以了。
set mouse=nv

" 高亮刚刚搜索的字符串
set hlsearch
" 递增搜索，即在输入的过程中就开始搜索，不必要按下回车
set incsearch

" 为 20 个文件保存位置标记（书签），
" 每个寄存器最多保存 50 行内容，且大小不能超过 10k
" 另外，打开文件时，不高亮显示上次关闭前搜索过的字符串
set viminfo='20,<50,s10,h

if version >= 700
    " 在左侧显示行号
    set number
endif

" 开启光棒
set cursorline

if version >= 700
    " 只有当存在多个标签页时，才显示标签行。
    set showtabline=1
endif

set laststatus=2
"set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l/%L:%c

set tags=./tags;,tags;
" 请先用 cd /usr/include && sudo ctags -R `pwd` 命令生成 tags 文件。
if filereadable("/usr/include/tags")
    set tags+=/usr/include/tags
endif

" Ctrl+] 时出现选择列表而不是自动跳到第一个。
set cst

if version >= 700
    set completeopt=longest,menuone
endif

" 按语法折叠，有 BUG，括号不匹配时会导致着色不正常。
autocmd FileType perl,c,cpp,python set foldmethod=syntax
" 最多折叠两层（一层函数，一层大流程控制），多了用处不大。
set foldnestmax=2
" 缺省不折叠
set nofoldenable

let perl_fold = 1
let perl_fold_blocks = 1
let perl_nofold_packages = 1

" 设置一堆编码种类吧
set fileencodings=utf-8,gbk,big5,euc-jp

" 关闭拼写检查
set nospell

"}}}
