source ~/.vim/bundle/vim-plug/plug.vim

" vim: set fdm=marker:
call plug#begin('~/.vim/bundle')

" 让 vim-plug 把自身也管起来
Plug 'junegunn/vim-plug'

" flw 的 vim profile
Plug 'flw-cn/flw.vim'

" 为数不多的支持 24 位真彩色的 Vim 主题
Plug 'morhetz/gruvbox'

" Vim 中文文档，感谢 vimcdoc！虽然现在不怎么用了，但入门全靠它。
Plug 'yianwillis/vimcdoc'

" 通用开发支持 ---{{{
" YouCompleteMe 是个很高大上的自动完成方案
if has("unix") | Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --go-completer --rust-completer --js-completer' } | endif
" 由 UltiSnips 提供的 snippet 方案，及其推荐的附加模块 ---{{{
Plug 'SirVer/UltiSnips'
" 代码片段模版
Plug 'honza/vim-snippets'
" }}}
" 语法检测插件，会在 sign column（侧边栏）显示语法检测到的错误
Plug 'vim-syntastic/syntastic'
" Tags 列表
Plug 'majutsushi/tagbar'
" 列表切割和粘连
Plug 'AndrewRadev/splitjoin.vim'
" }}}

" 办公 ---{{{
Plug 'vimwiki/vimwiki'
Plug 'mattn/calendar-vim'
" }}}

" 文件管理，快速打开文件 ---{{{
Plug 'yegappan/mru'
Plug 'jlanzarotta/BufExplorer'
Plug 'mbbill/VimExplorer'
" }}}

" Web 开发相关 ---{{{
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'jsx/jsx.vim'
Plug 'groenewege/vim-less'
Plug 'ap/vim-css-color'
Plug 'gorodinskiy/vim-coloresque'
" }}}

" 各种编程语言支持 ---{{{
Plug 'dgryski/vim-godef'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'vim-erlang/vim-erlang-runtime'
" Plug 'Prosumma/vim-rebol'
Plug 'Shutnik/jshint2.vim'
let g:jshint2_command = 'jsxhint'
Plug 'plasticboy/vim-markdown'
" Rust 语言支持
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'
" TOML 标记语言
Plug 'cespare/vim-toml'
" }}}

" Git 相关 ---{{{
" Vim 中的 git 扩展，可以在 Vim 内部使用许多 git 命令，
" 比如 :Gblame 可以用来追溯每行代码的最后修订版本
Plug 'tpope/vim-fugitive'
" Git 历史追踪工具
Plug 'junegunn/gv.vim'
" 在 sign column（侧边栏）显示修改记号
Plug 'airblade/vim-gitgutter'
" Vim 中的一个 Git 工作流，提供 Magit 命令
Plug 'jreybert/vimagit'
" 在 GitHub 上一键发布 gist
Plug 'mattn/gist-vim'
" }}}

" Vim 功能增强 ---{{{
Plug 'mattn/webapi-vim'
" 统计程序员的代码活动
Plug 'wakatime/vim-wakatime'
" 简单易用的 statusline 和 tabline 插件
Plug 'itchyny/lightline.vim'
" 启动界面
Plug 'mhinz/vim-startify'
" }}}

" 小工具 ---{{{
" 用 Vim 编曲、播放音乐
Plug 'daveyarwood/vim-alda'
" 画线，画框图
Plug 'vim-scripts/DrawIt'
" 画表格
Plug 'godlygeek/tabular'
" 解决复制粘贴时的缩进错位问题
Plug 'ConradIrwin/vim-bracketed-paste'
" 利用命令行 translate-shell 进行翻译，因为 HelpTags 有 BUG，暂时停用
" Plug 'VincentCordobes/vim-translate'
" 翻译工具
" Plug 'LanguageTool'
" 消灭盘古之白！
Plug 'hotoo/pangu.vim'
" Emoji（绘文字）支持
Plug 'mattn/emoji-vim'
Plug 'junegunn/vim-emoji'
" 自动切换行号（插入模式绝对行号，Normal 模式相对行号）
Plug 'myusuf3/numbers.vim'
" }}}

" 所有的 Plug 都必须写在 plug#begin() 和 plug#end() 之间。
call plug#end()
