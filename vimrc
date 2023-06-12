execute pathogen#infect()
execute pathogen#helptags()
filetype plugin indent on

"colorscheme PaperColor
"colorscheme molokai
"colorscheme gruvbox
"colorscheme wombat256grf
colorscheme catppuccin-mocha
syntax enable                     " enable syntax highlighting
set nocompatible                  " use vim-mode over vi-compatibilty
set smarttab                      " tab and backspace take indentation into account
set ruler                         " show cursorposition
set relativenumber                " linenumbers are relative
set number                        " show current line number, instead of a 'relative 0'
set cursorline                    " highlights current line you're in
hi CursorLineNr  term=bold cterm=bold gui=bold
set incsearch                     " preview during search (while typing)
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
set hidden                        "allows to 'close' unsaved buffers; they'll be hidden -> caution when exiting
set splitbelow                    "split a new `split` to the bottom (not the top)
set splitright                    "split a new `vsplit` to the right (not the left)
set mouse=a                       "enables selections via mouse + movement of windows
"set spell                         "enables spell checking per default

command Bd bp|bd#

"######################## Presentation Mode ##############################
nnoremap <F2> :set number! relativenumber! ruler! list!<CR>
nnoremap <PageUp> :bn<CR>
nnoremap <PageDown> :bp<CR>

"############################# PLUGIN-CONFIGS #############################
source ~/.vim/airline-config.vim
source ~/.vim/lsp-config.vim
source ~/.vim/vimspector-config.vim
luafile ~/.vim/compe-config.lua

