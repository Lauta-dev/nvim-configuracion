function Plug (p) return require("plugins/opciones/" .. p) end
---------------------------------------------------------------

require("plugins/init")
require("mapeado/mapeado")
require("opciones")

-- Plugins
Plug("nvim-tree")
Plug("autoclose")
Plug("lualine")
Plug("nvim-treesitter")
Plug("cmp")
Plug("mason")
Plug("toggle-term")
Plug("nvim-ts-rainbow")
--Plug("nvim-navic")
--Plug("colorize")
--Plug("luasnip")

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
