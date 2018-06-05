# flw.vim

这是我的 vim 配置文件群。简单安装就可以部署我的工作环境。

各位图省事儿的朋友可以把它当成一个 Vim 的发行版来使用，
在基本系统上一键部署和我一样的开发环境。

当然了，世上也有更好的 Vim 发行版，比如 [SpaceVim](https://spacevim.org)([GitHub](https://github.com/SpaceVim/SpaceVim))。
如果你追求更好的社区支持，显然它比我这个更合适。

## 集成的插件列表

### 开发工具

* 自动完成 [Valloric/YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
* 代码片段补全（引擎） [SirVer/UltiSnips](https://github.com/SirVer/UltiSnips)
* 代码片段补全（模版） [honza/vim-snippets](https://github.com/honza/vim-snippets)
* 语法检查引擎 [vim-syntastic/syntastic](https://github.com/vim-syntastic/syntastic)
* 标识符浏览及定位 [majutsushi/tagbar](https://github.com/majutsushi/tagbar)

### 办公插件

* 用 Markdown 写 Wiki [vimwiki/vimwiki](https://github.com/vimwiki/vimwiki)
* 可以和 VimWiki 集成的日记本 [mattn/calendar-vim](https://github.com/mattn/calendar-vim)
* 打开最近的文件 [yegappan/mru](https://github.com/yegappan/mru)
* 浏览已经打开的文件 [jlanzarotta/BufExplorer](https://github.com/jlanzarotta/BufExplorer)
* 浏览磁盘文件 [mbbill/VimExplorer](https://github.com/mbbill/VimExplorer)
* Markdown 支持 [plasticboy/vim-markdown](https://github.com/plasticboy/vim-markdown)

### 编程语言支持

* JavaScript [pangloss/vim-javascript](https://github.com/pangloss/vim-javascript)
* React/JSX [jsx/jsx.vim](https://github.com/jsx/jsx.vim)
* Less [groenewege/vim-less](https://github.com/groenewege/vim-less)
* CSS [ap/vim-css-color](https://github.com/ap/vim-css-color)
* Go [dgryski/vim-godef](https://github.com/dgryski/vim-godef)
* Go [fatih/vim-go](https://github.com/fatih/vim-go)
* Erlang [vim-erlang/vim-erlang-runtime](https://github.com/vim-erlang/vim-erlang-runtime)
* Red/Rebol [Prosumma/vim-rebol](https://github.com/Prosumma/vim-rebol)
* JavaScript [Shutnik/jshint2.vim](https://github.com/Shutnik/jshint2.vim)
* Rust [racer-rust/vim-racer](https://github.com/racer-rust/vim-racer)
* Rust [rust-lang/rust.vim](https://github.com/rust-lang/rust.vim)
* TOML [cespare/vim-toml](https://github.com/cespare/vim-toml)
* Alda [daveyarwood/vim-alda](https://github.com/daveyarwood/vim-alda)

### Git 支持

* Git 命令 [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
* Git commit 浏览器 [junegunn/gv.vim](https://github.com/junegunn/gv.vim)
* 在侧边栏实时显示每行代码的修改状态 [airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter)
* Git 工作流 [jreybert/vimagit](https://github.com/jreybert/vimagit)
* 一键发布 Gist [mattn/gist-vim](https://github.com/mattn/gist-vim)

### 工具和 Vim 增强

* VimL 写的 Web API 客户端 [mattn/webapi-vim](https://github.com/mattn/webapi-vim)
* 开发者 coding 行为统计 [wakatime/vim-wakatime](https://github.com/wakatime/vim-wakatime)
* 色彩斑斓的 statusline [itchyny/lightline.vim](https://github.com/itchyny/lightline.vim)
* 用 Vim 画 ASCII ART [vim-scripts/DrawIt](https://github.com/vim-scripts/DrawIt)
* 制表工具 [godlygeek/tabular](https://github.com/godlygeek/tabular)
* 修复 Vim 复制粘贴问题 [ConradIrwin/vim-bracketed-paste](https://github.com/ConradIrwin/vim-bracketed-paste)


## 安装方法

```shell
mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
git clone https://github.com/flw-cn/flw.vim.git ~/.vim/bundle/flw.vim
# 安装，安装过程中会生成 .vimrc，请先移走你的 ~/.vimrc
(cd flw.vim; git checkout develop; ./install.sh)
```

## 贡献指南

* 如果你觉得对你有用，请随意 clone 并使用，你可以任意传播本项目，只需要保留文件头部分的许可说明（如果有的话）即可。
* 别忘了 star！
* 有任何好的建议请给我发 issue，如果你可以帮助它变得更好，请发 PR 给我。
* 也许有一天它会变成一个真正的发行版。
