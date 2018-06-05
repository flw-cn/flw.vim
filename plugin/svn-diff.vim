" 绑定 F8 成为开启、关闭 svn diff 效果的快捷键
nmap <silent> <F8> :call flw#svn#toggleDiff()<CR>
nmap <silent> <S-F8> :new __SVN_DIFF__ <CR>:read !svn diff<CR>:setlocal syntax=diff buftype=nofile<CR>gg
