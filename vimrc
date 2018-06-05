" vim: set fdm=marker:
filetype off        " 注意必须要有这一行

if has("win32")
    " 加载 Vim Vundle
    set rtp+=~/vimfiles/bundle/Vundle.vim/
    " 设置安装插件的位置
    call vundle#begin('~/vimfiles/bundle')
else
    " 加载 Vim Vundle
    set rtp+=~/.vim/bundle/Vundle.vim
    " 设置安装插件的位置
    call vundle#begin('~/.vim/bundle')
endif

" 让 Vundle 把自身也管起来。这一句是必须的。
Plugin 'VundleVim/Vundle.vim'

" flw 的 vim profile
Plugin 'flw-cn/flw.vim'

" 为数不多的支持 24 位真彩色的 Vim 主题
Plugin 'morhetz/gruvbox'

" 通用开发支持 ---{{{
" YouCompleteMe 是个很高大上的自动完成方案
if ( has("unix") ) | Plugin 'Valloric/YouCompleteMe' | endif
" 由 UltiSnips 提供的 snippet 方案，及其推荐的附加模块 ---{{{
Plugin 'SirVer/UltiSnips'
" 代码片段模版
Plugin 'honza/vim-snippets'
" }}}

" 语法检测插件，会在 sign column（侧边栏）显示语法检测到的错误
Plugin 'vim-syntastic/syntastic'

" Tags 列表
Plugin 'majutsushi/tagbar'

" 列表切割和粘连
Plugin 'AndrewRadev/splitjoin.vim'
" }}}

" 办公 ---{{{
Plugin 'vimwiki/vimwiki'
Plugin 'mattn/calendar-vim'
" }}}

" 文件管理，快速打开文件 ---{{{
Plugin 'yegappan/mru'
Plugin 'jlanzarotta/BufExplorer'
Plugin 'mbbill/VimExplorer'
" }}}

" Web 开发相关 ---{{{
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'jsx/jsx.vim'
Plugin 'groenewege/vim-less'
Plugin 'ap/vim-css-color'
Plugin 'gorodinskiy/vim-coloresque'
" }}}

" 各种编程语言支持 ---{{{
Plugin 'dgryski/vim-godef'
Plugin 'fatih/vim-go'
Plugin 'vim-erlang/vim-erlang-runtime'
Plugin 'Prosumma/vim-rebol'
Plugin 'Shutnik/jshint2.vim'
let g:jshint2_command = 'jsxhint'
Plugin 'plasticboy/vim-markdown'
" Rust 语言支持
Plugin 'racer-rust/vim-racer'
Plugin 'rust-lang/rust.vim'
" TOML 标记语言
Plugin 'cespare/vim-toml'
" }}}

" Git 相关 ---{{{
" Vim 中的 git 扩展，可以在 Vim 内部使用许多 git 命令，
" 比如 :Gblame 可以用来追溯每行代码的最后修订版本
Plugin 'tpope/vim-fugitive'
" Git 历史追踪工具
Plugin 'junegunn/gv.vim'
" 在 sign column（侧边栏）显示修改记号
Plugin 'airblade/vim-gitgutter'
" Vim 中的一个 Git 工作流，提供 Magit 命令
Plugin 'jreybert/vimagit'
" 在 GitHub 上一键发布 gist
Plugin 'mattn/gist-vim'
" }}}

" Vim 功能增强 ---{{{
Plugin 'mattn/webapi-vim'
" 统计程序员的代码活动
Plugin 'wakatime/vim-wakatime'
" 简单易用的 statusline 和 tabline 插件
Plugin 'itchyny/lightline.vim'
" }}}

" 小工具 ---{{{
" 用 Vim 编曲、播放音乐
Plugin 'daveyarwood/vim-alda'
" 画线，画框图
Plugin 'vim-scripts/DrawIt'
" 画表格
Plugin 'godlygeek/tabular'
" 解决复制粘贴时的缩进错位问题
Plugin 'ConradIrwin/vim-bracketed-paste'
" 利用命令行 translate-shell 进行翻译，因为 HelpTags 有 BUG，暂时停用
" Plugin 'VincentCordobes/vim-translate'
" 翻译工具
" Plugin 'LanguageTool'

" 消灭盘古之白！
Plugin 'hotoo/pangu.vim'

" Emoji（绘文字）支持
Plugin 'mattn/emoji-vim'
Plugin 'junegunn/vim-emoji'

" }}}

" 所有的 Plugin 都必须写在 vundle#begin() 和 vundle#end() 之间。
call vundle#end()            " 必须
filetype plugin indent on    " 必须
