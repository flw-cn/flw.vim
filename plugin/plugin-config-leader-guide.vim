let g:lmap = {
    \'name': '<Leader>',
\}

let g:lmap.w = {
    \'name': 'VimWiki Opreator...',
    \' ': { 'name': 'VimWiki Diary Opreator...' },
\}

let g:topdict = {}
let g:topdict[' '] = g:lmap

call leaderGuide#register_prefix_descriptions("", "g:topdict")

let mapleader=' '
let maplocalleader=','

nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>
map <leader>. <Plug>leaderguide-global
