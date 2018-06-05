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

" 修正和 tmux 配合时背景色刷新不正常的问题
set t_ut=

" 对其它颜色对修正
autocmd FileType html hi link htmlHead Normal

let &cpo = s:save_cpo
unlet s:save_cpo
