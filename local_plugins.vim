"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Local Plugs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Required:
call dein#begin(expand('~/.vim_config/local/'))

" Let dein manage dein
call dein#add('~/.vim_config/dein.vim')
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add or remove your plugins here:
" You can specify revision/branch/tag.
" call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

call dein#add('sebastianmarkow/deoplete-rust')
call dein#add('zchee/deoplete-clang')
call dein#add('zchee/deoplete-jedi')

" Required:
call dein#end()
