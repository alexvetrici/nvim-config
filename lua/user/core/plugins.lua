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
  "iamcco/markdown-preview.nvim", -- preview for markdown files 
  "nvim-lua/popup.nvim", -- An implementation of Popup API from vim
  "nvim-lua/plenary.nvim", -- Useful lua function used ny lots of plugins
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",
  "nvim-lualine/lualine.nvim",
  "nvim-treesitter/nvim-treesitter",
  "bluz71/vim-nightfly-colors",
  "vim-test/vim-test",
  "lewis6991/gitsigns.nvim",
  "preservim/vimux",
  "christoomey/vim-tmux-navigator",
  "tpope/vim-fugitive",
  "tpope/vim-commentary",

  -- Rust
  "mfussenegger/nvim-dap",
  "rcarriga/nvim-dap-ui",
  "simrat39/rust-tools.nvim",

  -- Colorchemes
  "ellisonleao/gruvbox.nvim",

  -- Snippets
  "rafamadriz/friendly-snippets", --a bunch of snippets to use
  {
    "L3MON4D3/LuaSnip", dependencies = { "rafamadriz/friendly-snippets" },
  },

  -- CMP Plugins
  "hrsh7th/nvim-cmp", -- The completion plugin
  "hrsh7th/cmp-nvim-lsp",-- Language server
  "hrsh7th/cmp-buffer", -- buffer completions
  "hrsh7th/cmp-path", -- path completions
  "hrsh7th/cmp-cmdline", -- cmdline completions
  "saadparwaiz1/cmp_luasnip", -- snippet completions
  "hrsh7th/cmp-nvim-lua",
  "saadparwaiz1/cmp_luasnip",
  "github/copilot.vim",
  "williamboman/mason-lspconfig.nvim",
  "glepnir/lspsaga.nvim",
  {
	  'nvim-telescope/telescope.nvim',
	  tag = '0.1.0',
	  dependencies = { {'nvim-lua/plenary.nvim'} }
  },

  -- LSP
  "neovim/nvim-lspconfig", -- Enable LSP
  { "williamboman/mason.nvim", build = ":MasonUpdate" }, -- :MasonUpdate updates registry contents
  "williamboman/mason-lspconfig.nvim",

}

local opts = {}

require("lazy").setup(plugins, opts)


