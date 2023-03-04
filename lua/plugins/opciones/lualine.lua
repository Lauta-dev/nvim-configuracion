local lualine = require("lualine")
lualine.setup({
  options = {
    theme = "onedark",
    disabled_filetypes = {
      "alpha",
      "NvimTree",
      "Dashboard",
      "Telescope"
    },
    sections = {
    lualine_a = {'mode'},
    lualine_b = {'brach', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    
    lualine_x = {},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },}
})
lualine.hide({
  place = {'tabline', 'winbar'}, -- The segment this change applies to.
})
