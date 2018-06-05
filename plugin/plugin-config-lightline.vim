let g:lightline = {
    \   'colorscheme': 'darkblue',
	\   'subseparator': { 'left': '', 'right': '' },
    \   'active': {
    \       'left': [ [ 'mode', 'paste' ],
    \                 [ 'gitbranch', 'readonly', 'relativepath', 'modified' ] ],
    \       'right': [ [ 'lineinfo', 'syntastic' ],
    \              [ 'percent' ],
    \              [ 'fileformat', 'fileencoding', 'filetype' ] ],
    \   },
    \   'component_function': {
    \       'gitbranch': 'fugitive#head',
    \       'syntastic': 'SyntasticStatuslineFlag',
    \   },
    \ }
