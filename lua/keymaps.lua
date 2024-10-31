local opts = {
	noremap = true,						-- non-recursive
	silent = true,						-- do not show msg
}

-- see `:h vim.keymap.set()`
vim.g.mapleader = ";"
-----------------
-- NORMAL MODE --
-----------------
-- ############################## Presentation Mode ##############################
vim.keymap.set('n', '<F2>', 				'<CMD>set number! ruler! list!<CR>', opts)
vim.keymap.set('n', '<PageUp>', 		'<CMD>bn<CR>', opts)
vim.keymap.set('n', '<PageDown>', 	'<CMD>bp<CR>', opts)
vim.keymap.set('n', '<C-PageUp>', 	'<CMD>tabn<CR>', opts)
vim.keymap.set('n', '<C-PageDown>',	'<CMD>tabp<CR>', opts)

-- ############################## LSP ##############################
vim.keymap.set('n', 'gD',						vim.lsp.buf.declaration, opts)
vim.keymap.set('n', 'gd',						vim.lsp.buf.definition, opts)
vim.keymap.set('n', 'gr',						vim.lsp.buf.references, opts)
vim.keymap.set('n', 'gi',						vim.lsp.buf.implementation, opts)
vim.keymap.set('n', 'K',						vim.lsp.buf.hover, opts)
vim.keymap.set('n', '<C-k>',				vim.lsp.buf.signature_help, opts)
vim.keymap.set('n', '<C-p>',				vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', '<C-n>',				vim.diagnostic.goto_next, opts)


-- ############################## LEADER ##############################
vim.keymap.set('n', '<leader>t',				'<CMD>Neotree float toggle<CR>', opts)
vim.keymap.set('n', '<leader>h',				'<CMD>History:<CR>', opts)
vim.keymap.set('n', '<leader>f',				'<CMD>Files<CR>', opts)
vim.keymap.set('n', '<leader>o',				'<CMD>Outline<CR>', opts)

-- ############################## TERMINAL ##############################
--vim.keymap.set('n', '<C-T>',				'<CMD>split | resize 10 | terminal<CR>', opts)

-----------------
-- VISUAL MODE --
-----------------
