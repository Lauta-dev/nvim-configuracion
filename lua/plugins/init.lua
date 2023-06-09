local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ "nvim-tree/nvim-tree.lua" },
	{ "nvim-tree/nvim-web-devicons" },
	{ "m4xshen/autoclose.nvim" },
	{ "romgrk/barbar.nvim" },
	{ "nvim-lualine/lualine.nvim" },
	{ "nvim-treesitter/nvim-treesitter" },
  { 'nvim-telescope/telescope.nvim', tag = '0.1.1', dependencies = { 'nvim-lua/plenary.nvim' } },
  { "akinsho/toggleterm.nvim" },
  { "mrjones2014/nvim-ts-rainbow" },
  { "lukas-reineke/indent-blankline.nvim" },
  { "SmiteshP/nvim-navic", dependencies = {"neovim/nvim-lspconfig"} },
  { "olimorris/onedarkpro.nvim", priority = 1000 },
  { "Pocco81/auto-save.nvim" },
  { "goolord/alpha-nvim" },
  { "Shatur/neovim-ayu" },
  { 'kevinhwang91/nvim-bqf' },
  { 'xiyaowong/nvim-cursorword' },
  { "folke/which-key.nvim" },
  -- Lsp
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim" },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-buffer' },
  { 'hrsh7th/cmp-path' },
  { 'hrsh7th/cmp-cmdline' },
  { 'hrsh7th/nvim-cmp' },
  { "L3MON4D3/LuaSnip", version = "<CurrentMajor>.*", build = "make install_jsregexp" },
  { "rafamadriz/friendly-snippets" },
  --------------------
})

