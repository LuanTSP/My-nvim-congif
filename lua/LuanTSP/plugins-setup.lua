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
  -- prefered themes
  { "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },
  { "EdenEast/nightfox.nvim" },
  { 'navarasu/onedark.nvim' },
  { "nyoom-engineering/oxocarbon.nvim" },
  -- split window navigator
  { "christoomey/vim-tmux-navigator" },
  -- toggle maximizes split window
  { "szw/vim-maximizer" },
  -- easy comments
  { "numToStr/Comment.nvim" },
  -- file tree explorer
  { "nvim-tree/nvim-tree.lua" },
  { "nvim-tree/nvim-web-devicons" },
  -- line for nvim modes
  { "nvim-lualine/lualine.nvim", lazy = false },

  -- fuzzy finder
  { 'nvim-telescope/telescope.nvim', tag = '0.1.3', dependencies = { 'nvim-lua/plenary.nvim' }},

  -- autocompletion
  { 'neovim/nvim-lspconfig' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-buffer' },
  { 'hrsh7th/cmp-path' },
  { 'hrsh7th/cmp-cmdline' },
  { 'hrsh7th/nvim-cmp' },

  -- managing and installing LSP servers
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig" },

  -- configuring lspservers
  { "nvimdev/lspsaga.nvim" },
  { "onsails/lspkind.nvim" },

  -- snippets
  { "L3MON4D3/LuaSnip" },
  { "saadparwaiz1/cmp_luasnip" },
  { "rafamadriz/friendly-snippets" },

  -- treesitter
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

  -- autopair and autoclose
  { 'windwp/nvim-autopairs' },
  { "windwp/nvim-ts-autotag"},

  -- tab navigation
  {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
  -- multicursor
  { 'mg979/vim-visual-multi' },
  -- dashboard
  { 'glepnir/dashboard-nvim', dependencies = { {'nvim-tree/nvim-web-devicons'}}},
  -- git integration
  { 'lewis6991/gitsigns.nvim' },
  -- notification
  { 'rcarriga/nvim-notify' },
  -- todo comments
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
})

