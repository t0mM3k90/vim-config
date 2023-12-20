lspconfig = require'lspconfig'

-- ############################## C/C++ LanguageServer ##############################
lspconfig.ccls.setup{}
-- ############################## CMake LanguageServer ##############################
lspconfig.cmake.setup{}
-- ############################## Bash LanguageServer ##############################
lspconfig.bashls.setup{}
-- ############################## Python LanguageServer ##############################
lspconfig.pylsp.setup{}
-- ############################## Docker LanguageServer ##############################
lspconfig.dockerls.setup{}
-- ############################## Lua LanguageServer ##############################
--lspconfig.lua_ls.setup{}
-- ############################## Vim LanguageServer ##############################
lspconfig.vimls.setup{}
