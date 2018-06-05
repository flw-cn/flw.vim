" flw's vim profile
" Maintainer: flw <flw@cpan.org>
" License:	GPLv3

if exists("g:loaded_flw_profile")
  finish
endif
let g:loaded_flw_profile = 1

let s:save_cpo = &cpo
set cpo&vim

" 启动语法识别
syntax on

if has("gui_macvim")
    set macligatures
    set guifont=Fira\ Code\ Light:h16
    colorscheme darkblue
elseif has("gui_running")
    colorscheme darkblue

    hi Visual                       guibg=Yellow
    hi Folded       guifg=#CCCCCC   guibg=#900090
    hi FoldColumn   guifg=#CCCCCC   guibg=#900090
    hi DiffText                     guibg=#CC0000
    hi CursorLine                   guibg=#000060
else
    colorscheme flw
endif

" 修正和 tmux 配合时背景色刷新不正常的问题
set t_ut=

" 对其它颜色对修正
autocmd FileType html hi link htmlHead Normal

let &cpo = s:save_cpo
unlet s:save_cpo
