set runtimepath^=~/.nvim runtimepath+=~/.nvim/after
let &packpath = &runtimepath

runtime ./plugs.vim

" terminal
syntax enable
filetype plugin indent on

set nu rnu
set completeopt=menuone,noinsert,noselect
set shortmess+=c
set expandtab
set smartindent
set tabstop=4 softtabstop=4
set cmdheight=2
set signcolumn=yes
set hidden
set nobackup
set nowritebackup
set updatetime=300

vnoremap p "_dP

runtime ./maps.vim