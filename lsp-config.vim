nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.diagnostic.goto_next()<CR>

autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)

"############ c/c++ language server
lua require'lspconfig'.clangd.setup{}
"############ cmake language server
"lua require'lspconfig'.cmake.setup{}
"############ bash language server
lua require'lspconfig'.bashls.setup{}
"############ docker language server
"lua require'lspconfig'.dockerls.setup{}
"############ html language server
"lua require'lspconfig'.html.setup{}
"############ python language server
lua require'lspconfig'.pylsp.setup{}
"############ sql language server
"lua require'lspconfig'.sqlls.setup{}
"############ vim language server
lua require'lspconfig'.vimls.setup{}
