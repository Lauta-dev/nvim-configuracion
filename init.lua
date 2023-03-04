require("plugins/init")
require("mapeado/mapeado")
require("opciones")

local plugins = {
  "nvim-tree",
  "autoclose",
  "lualine",
  "nvim-treesitter",
  "cmp",
  "mason",
  "toggle-term",
  "nvim-ts-rainbow",
  "nvim-test",
  "auto-save",
  "alpha-nvim",
}

for plg in pairs(plugins) do
  require("plugins/opciones/" .. plugins[plg])
end

local disabled_built_ins = {
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "gzip",
  "zip",
  "zipPlugin",
  "tar",
  "tarPlugin",
  "getscript",
  "getscriptPlugin",
  "vimball",
  "vimballPlugin",
  "2html_plugin",
  "logipat",
  "rrhelper",
  "spellfile_plugin",
  "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
    vim.g["loaded_" .. plugin] = 1
end
