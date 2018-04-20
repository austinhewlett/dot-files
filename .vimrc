"""""""""""""""""""""""""""""""
" Austin Hewlett vimrc config "
"""""""""""""""""""""""""""""""

""" PLUGINS  "
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()


""" PLUGIN SPECIFICS

" junegunn/fzf.vim
if executable('ag')
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --follow --ignore .git -g ""'
endif

""" GENERAL SETTINGS "
set nocompatible
syntax on
set nowrap
set encoding=utf8
set backspace=indent,eol,start "make backspace behave normally

""" LEADER KEYBINDINGS

map <space> <leader>

nnoremap <leader>p :FZF<cr>
