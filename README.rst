==========================
The FOSS Vim Configuration
==========================

Finally, a vim configuration designed for poking around open source projects. This config is designed to be language agnostic, but like its creator, it centers around git, Python, C/C++/C#.

Kiding aside, I started using vim in just after graduation in June of 2016, so this config is far from perfect.

Installation
============

To install, simply run the following three commands::

  git clone https://github.com/vguarnaccia/vim_config.git ~/.vim_config
  sh ~/.vim_config/install.sh
  git submodule update --init --recursive

Requirements
============

Vim, obviously, and it must be compiled with python and lua. More requirements to come in the future. It works best with `neovim`_ (make sure to remember ``pip install neovim``)

Plugins
=======

You can add your own by using::

  git submodule add https://github.com/username/MyPlugin.vim.git ~/.vim_config/bundle/MyPlugin.vim
  git submodule update --init --recursive

Custom Key Mappings
===================

- `ctrlp.vim`_: Full path fuzzy file, buffer, mru, tag, ... finder for Vim. Open with ``<Ctrl-P>`` and cycle through modes with ``<Ctrl-B>``.

- `fugitive.vim`_: A Git wrapper so awesome, it should be illegal.

Howto Add New Plugin
====================

You can add new pluginds with::

  git submodule add https://github.com/ctrlpvim/ctrlp.vim ~/.vim_config/plugins

And update plugins with::

  git submodule update --merge --recursive --remote

Examples
========

TODO

Acknowledgments
===============

Project inspired by github.com/amix/vimrc

.. _YouCompleteMe: https://github.com/Valloric/YouCompleteMe
.. _ctrlp.vim: https://github.com/ctrlpvim/ctrlp.vim
.. _fugitive.vim: https://github.com/tpope/vim-fugitive
.. _neovim: https://neovim.io/
