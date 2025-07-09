"=========================
"        [options]
"=========================

let s:options_switch = v:true

if s:options_switch
    set nocompatible 
    set number
    set wrap
    set relativenumber
    set tabstop=4
    set shiftwidth=4
    set expandtab
    set autoindent
    set smartindent
    set noignorecase
    set smartcase
    set incsearch
    set hlsearch
    set encoding=utf-8
    set fileencodings=utf-8
    set nobackup
    set noswapfile
    syntax on
    set showmatch
endif
