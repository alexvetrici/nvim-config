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

local plugins = {
  -- Plugins
  "iamcco/markdown-preview.nvim",

  -- Colorchemes
  "ellisonleao/gruvbox.nvim",

  -- Snippets
  "rafamadriz/friendly-snippets", --a bunch of snippets to use
  {
    "L3MON4D3/LuaSnip", dependencies = { "rafamadriz/friendly-snippets" },
  },

  -- CMP Plugins
  "hrsh7th/nvim-cmp", -- The completion plugin
  "neovim/nvim-lspconfig",
  "hrsh7th/cmp-nvim-lsp",-- Language server
  "hrsh7th/cmp-buffer", -- buffer completions
  "hrsh7th/cmp-path", -- path completions
  "hrsh7th/cmp-cmdline", -- cmdline completions
  "saadparwaiz1/cmp_luasnip", -- snippet completions

}

local opts = {}

require("lazy").setup(plugins, opts)


