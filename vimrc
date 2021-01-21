execute pathogen#infect()
filetype plugin indent on
"airline plugin
set laststatus=2
let g:airline#extensions#tabline#enabled = 3
let g:airline_powerline_fonts = 1
let g:airline_theme = 'wombat'
set noshowmode                    "show mode not needed when airline is being used

colorscheme wombat256grf
syntax enable                     " enable syntax highlighting
set nocompatible                  " use vim-mode over vi-compatibilty
set smarttab                      " tab and backspace take indentation into account
set ruler                         " show cursorposition
set relativenumber                " linenumbers are relative
set number                        " show current line number, instead of a 'relative 0'
set cursorline                    " highlights current line you're in
hi CursorLineNr  term=bold cterm=bold gui=bold
set ignorecase                    " by default search without casesensitivity
set smartcase                     " use casesensitivity when searchstring has uppercase letters
set hlsearch                      " highlight during search
set path+=**                      " append PWD recursively to path (allows searches within PWD)
set wildmenu                      " enable menu p.e. for autocomplete in vim commands
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list                          "show invisible characters
set autoindent                    "enable autoindentation
set expandtab!                    "use spaces over tabs
set shiftwidth=2                  "use 2 spaces for autoindent
set tabstop=2                     "use 2 spaces for tabstop
set shiftround                    "autoindent always uses multiples of shiftwidth for indentation
