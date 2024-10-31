lspconfig = require'lspconfig'

-- ############################## C/C++ LanguageServer ##############################
lspconfig.clangd.setup{
  root_dir = function(_)
    return vim.fn.getcwd()
  end,
}

--lspconfig.ccls.setup{
--	root_dir = function(_)
--		return vim.fn.getcwd()
--	end,
--	init_options = {
--		compilationDatabaseDirectory = "build";
--		index = { threads = 0; };
--	}
--}
-- ############################## CMake LanguageServer ##############################
lspconfig.cmake.setup{}
-- ############################## Bash LanguageServer ##############################
lspconfig.bashls.setup{}
-- ############################## Python LanguageServer ##############################
lspconfig.pylsp.setup{}
-- ############################## Docker LanguageServer ##############################
lspconfig.dockerls.setup{}
-- ############################## Lua LanguageServer ##############################
lspconfig.lua_ls.setup{}
-- ############################## Vim LanguageServer ##############################
lspconfig.vimls.setup{}
