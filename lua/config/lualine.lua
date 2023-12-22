local function get_tabline_content()
  if vim.fn.tabpagenr('$') > 1 then
    return {'tabs'}
  else
    return {'buffers'}
  end
end


require('lualine').setup{
  options = {
    --theme = '16color',
    --theme = 'ayu_dark',
    --theme = 'gruvbox_dark',
    --theme = 'gruvbox_material',
    --theme = 'PaperColor',
    --theme = 'powerline',
    theme = 'powerline_dark',
    --theme = 'solarized_dark',
    --theme = 'wombat',
  },
--  sections = {
--    lualine_a = {'mode'},
--    lualine_b = {'branch'},
--    lualine_c = {'filename'},
--    lualine_x = {'encoding', 'fileformat', 'filetype'},
--    lualine_y = {'progress'},
--    lualine_z = {'location'},
--  },
  tabline = {
    lualine_a = get_tabline_content(),
    lualine_b = {},
    lualine_c = {'default'},
  },
}
