require("mapeado/mapeado")
require("plugins/init")
require("opciones")

-- Plugins
require("plugins/opciones/nvim-tree")
require("plugins/opciones/autoclose")
require("plugins/opciones/lualine")
require("plugins/opciones/nvim-treesitter")
require("plugins/opciones/cmp")
require("plugins/opciones/mason")
--require("plugins/opciones/luasnip")
require("plugins/opciones/toggle-term")
require("plugins/opciones/nvim-ts-rainbow")
--require("plugins/opciones/nvim-navic")
--require("plugins/opciones/colorize")

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
