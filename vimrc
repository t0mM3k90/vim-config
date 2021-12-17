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
hi DiffAdd      gui=none    guifg=NONE          guibg=#3E7B04     ctermbg=2*
hi DiffChange   gui=none    guifg=NONE          guibg=#9D8000     ctermbg=3*
hi DiffDelete   gui=bold    guifg=#ff8080       guibg=#A30000     ctermbg=1*
hi DiffText     gui=none    guifg=NONE          guibg=#295183     ctermbg=4*

"#################### AUTOCOMPLETE-COLORS ###########################
hi Pmenu        gui=none    guifg=gray          guibg=#ADADAD     ctermbg=7
hi PmenuSel     gui=none    guifg=gray          guibg=#ADADAD     ctermbg=7

"#################### LSP & ASYNCCOMPLETE ###########################
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

imap <c-space> <Plug>(asyncomplete_force_refresh)

"#################### FUGITIVE MERGE SHORTCUTS ###########################
nnoremap gdh :diffget //2<CR>
nnoremap gdl :diffget //3<CR>

"#################### MAPPINGS FOR VIMSPECTOR ###########################
let g:vimspector_enable_mappings = 'HUMAN'
