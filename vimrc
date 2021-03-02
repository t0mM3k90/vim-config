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
set hidden                        "allows to 'close' unsaved buffers; they'll be hidden -> caution when exiting

"################### VIMDIFFCOLOR OVERWRITE ##########################
hi DiffAdd      gui=none    guifg=NONE          guibg=#bada9f     ctermbg=2*
hi DiffChange   gui=none    guifg=NONE          guibg=#e5d5ac     ctermbg=3*
hi DiffDelete   gui=bold    guifg=#ff8080       guibg=#ffb0b0     ctermbg=1*
hi DiffText     gui=none    guifg=NONE          guibg=#8cbee2     ctermbg=4*


"#################### LSP & ASYNCCOMPLETE ###########################
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

imap <c-space> <Plug>(asyncomplete_force_refresh)
