==========================
The FOSS Vim Configuration
==========================

Finally, a vim configuration designed for poking around open source projects. This config is designed to be language agnostic, but like its creator, it centers around git, Python, C/C++/C#.

Kiding aside, I started using vim in just after graduation in June of 2016, so this config is far from perfect.

Installation
============

To install, simply run the following two commands::

  git clone https://github.com/vguarnaccia/vim_config.git
  sh ~/.vim_config/install.sh
  
Requirements
============

Vim, obviously, and compiled with python. More requirements to come in the future.

Plugins
=======

Custom Key Mappings
===================

- `ctrlp.vim <https://github.com/ctrlpvim/ctrlp.vim>`_: Full path fuzzy file, buffer, mru, tag, ... finder for Vim. Open with ``<Ctrl-P>`` and cycle through modes with ``<Ctrl-B>``.

- `fugitive.vim <https://github.com/tpope/vim-fugitive>`_: A Git wrapper so awesome, it should be illegal.

Howto Add New Plugin
====================

::

git clone https://github.com/ctrlpvim/ctrlp.vim ~/.vim_config/plugins

Examples
========

Acknowledgments
===============

Project inspired by github.com/amix/vimrc
