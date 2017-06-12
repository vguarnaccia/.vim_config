"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Runtime Setup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if &compatible
  set nocompatible               " Be iMproved
endif

set runtimepath+=~/.vim_config
set runtimepath+=~/.vim_config/dein.vim

source ~/.vim_config/plugins_config.vim
source ~/.vim_config/default.vim
source ~/.vim_config/completers.vim

try
    source ~/.vim_config/experimental.vim
    catch
endtry

if dein#load_state(expand('~/.vim_config/included/'))
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

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Included plugins
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    call dein#begin(expand('~/.vim_config/included/'))
    call dein#add('~/.vim_config/dein.vim')

    call dein#add('raimondi/delimitmate')
    call dein#add('vim-syntastic/syntastic')
    call dein#add('majutsushi/tagbar')
    call dein#add('bling/vim-airline')
    call dein#add('tpope/vim-commentary')
    call dein#add('amix/vim-zenroom2')
    call dein#add('kien/ctrlp.vim')
    call dein#add('tpope/vim-fugitive')
    call dein#add('airblade/vim-gitgutter')
    call dein#add('scrooloose/nerdtree')
    call dein#add('junegunn/goyo.vim')
    call dein#add('Shougo/neocomplete.vim')
    call dein#add('Shougo/deoplete.nvim')
    call dein#add('frankier/neovim-colors-solarized-truecolor-only')

    " Required:
    call dein#end()
    call dein#save_state()
endif

filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
 call dein#install()
endif
