"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Runtime Setup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if &compatible
  set nocompatible               " Be iMproved
endif

set runtimepath+=~/.vim_config
set runtimepath+=~/.vim_config/dein.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Dein Plugin Manager
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if dein#load_state(expand('~/.vim_config/included/'))

    " Source Local Plugins
    source ./local_plugins.vim

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Included Plugins
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Source Configurations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

source ./included_plugins.vim
source ./default.vim
source ./completers.vim

try
    source ~/.vim_config/experimental.vim
    catch
endtry
