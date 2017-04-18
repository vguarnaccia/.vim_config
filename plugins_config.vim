""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pathogen
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call pathogen#infect('~/.vim_config/bundle/{}')
call pathogen#helptags()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fugitive
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gs :Gstatus<CR>
nnoremap <space>gc :Gcommit<CR>
nnoremap <space>gd :Gdiff<CR>
nnoremap <space>ge :Gedit<CR>
nnoremap <space>gre :Gread<CR>
nnoremap <space>grm :Gremove<CR>
nnoremap <space>gw :Gwrite<CR><CR>
nnoremap <space>gl :Glog<CR>
nnoremap <space>gp :Ggrep<Space>
nnoremap <space>gm :Gmove<Space>
nnoremap <space>gbr :Git branch<Space>
nnoremap <space>gbl :Gblame<Space>
nnoremap <space>go :Git checkout<Space>
nnoremap <space>gps :Dispatch! git push<CR>
nnoremap <space>gpl :Dispatch! git pull<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set laststatus=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree Tabs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <C-n> :NERDTreeTabsToggle<CR>

" Open NERDTree if no file is specified.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Or if vim starts on a directory/
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <F8> :TagbarToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Solarized
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:solarized_termcolors=256
syntax enable
colorscheme solarized
set background=dark "Try both dark and light

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimroom
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:goyo_width=100
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2
nnoremap <silent> <leader>z :Goyo<cr>
