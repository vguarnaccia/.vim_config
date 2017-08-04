==========================
The FOSS Vim Configuration
==========================

Finally, a vim configuration designed for poking around open source projects. This config is designed to be language agnostic, but like its creator, it centers around git, Python, C/C++/C#.

Kiding aside, I started using vim in just after graduation in June of 2016, so this config is far from perfect.

Installation
============

To install, simply run the following three commands::

  cd ~
  git clone https://github.com/vguarnaccia/.vim_config.git
  sh ~/.vim_config/install.sh

To uninstall, simple delete ``.vim_config/`` and remove the relevant lines from your ``.vimrc/``.


Requirements
============

Vim, obviously, and it must be compiled with python and lua. More requirements to come in the future. It works best with `neovim`_ (make sure to remember ``pip install neovim``).

Custom Key Mappings
===================

- `deoplete`_: Light autocomplete, set to use tabcompletion. More completers availible through `omnifunc`_ plugins. You can cycle through options with ``<tab>``.
- `ctrlp.vim`_: Full path fuzzy file, buffer, mru, tag, ... finder for Vim. Open with ``<Ctrl-P>`` and cycle through modes with ``<Ctrl-B>``.
- `fugitive.vim`_: A Git wrapper so awesome, it should be illegal.
- TODO: extend this list.

Howto Add New Plugin
====================

You can add your own plugins using dein.vim in the file ``local_plugins.vim``.

Example::

    " Add or remove your plugins here:
    " You can specify revision/branch/tag.
    call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
    call dein#add('sebastianmarkow/deoplete-rust')

    " Required:

Examples
========

TODO

Acknowledgments
===============

Project inspired by github.com/amix/vimrc

.. _deoplete: https://github.com/Shougo/deoplete.nvim
.. _YouCompleteMe: https://github.com/Valloric/YouCompleteMe
.. _ctrlp.vim: https://github.com/ctrlpvim/ctrlp.vim
.. _fugitive.vim: https://github.com/tpope/vim-fugitive
.. _neovim: https://neovim.io/
.. _omnifunc: https://github.com/Shougo/deoplete.nvim/wiki/Completion-Sources
