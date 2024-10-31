vim.opt.compatible			=				false		-- use vim-mode over vi-compatibilty
vim.opt.smarttab				=				true		-- tab and backspace take indentation into account
vim.opt.ruler						=				true		-- show cursorposition
vim.opt.relativenumber	=				false		-- linenumbers are relative
vim.opt.number					=				true		-- show current line number, instead of a 'relative 0'
vim.opt.cursorline			=				true		-- highlights current line you're in
vim.opt.incsearch				=				true		-- preview during search (while typing)
vim.opt.ignorecase			=				true		-- by default search without casesensitivity
vim.opt.smartcase				=				true		-- use casesensitivity when searchstring has uppercase letters
vim.opt.hlsearch				=				true		-- highlight during search
vim.opt.path		= vim.opt.path + {"**"}	-- append PWD recursively to path (allows searches within PWD)
vim.opt.wildmenu				=				true		-- enable menu p.e. for autocomplete in vim commands
vim.opt.list						=				true		-- show invisible characters
vim.opt.autoindent			=				true		-- enable autoindentation
vim.opt.expandtab				=				true		-- use spaces over tabs
vim.opt.shiftwidth			=				2				-- use 2 spaces for autoindent
vim.opt.tabstop					=				2				-- use 2 spaces for tabstop
vim.opt.shiftround			=				true		-- autoindent always uses multiples of shiftwidth for indentation
vim.opt.hidden					=				true		-- allows to 'close' unsaved buffers; they'll be hidden -> caution when exit
vim.opt.splitbelow			=				true		-- split a new `split` to the bottom (not the top)
vim.opt.splitright			=				true		-- split a new `vsplit` to the right (not the left)
vim.opt.mouse						=				'a'			-- enables selections via mouse + movement of windows
vim.opt.spell						=				false		-- enables spell checking per default

vim.opt.listchars	=	"eol:$,tab:>-,trail:~,extends:>,precedes:<"

vim.cmd[[syntax enable]]																												-- enable syntax highlighting
vim.cmd[[highlight CursorLineNr  term=bold cterm=bold gui=bold]]								-- highlight curlineNr in bold

