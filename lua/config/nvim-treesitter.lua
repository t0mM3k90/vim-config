require'nvim-treesitter.configs'.setup{
  ensure_installed = {"c", "cpp", "cmake", "json", "xml", "html", "dockerfile", "lua", "vim", "vimdoc", "query"},
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  refactor = {
    highlight_definitions = {
      enable = true,
      clear_on_cursor_move = true,
    },
    highlight_current_scope = {
      enable = true,
    },
    smart_rename = {
      enable = false,
      keymaps = {
        smart_rename = "grr",
      },
    },
    navigation = {
      enable = true,
      keymaps = {
        goto_definition = "gnd",
        list_definitions = "gnD",
        list_definitions_toc = "g0",
        goto_next_usage = "<A-*>",
        goto_previous_usage = "<A-#>",
      },
    },
  },
}

vim.opt.foldmethod='expr'
vim.opt.foldexpr='nvim_treesitter#foldexpr()'
vim.opt.foldenable=false
