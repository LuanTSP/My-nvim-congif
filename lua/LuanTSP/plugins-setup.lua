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
  -- top tab
  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    opts = {
      -- configurations go here
    },
  },
  -- ui
  {
    'stevearc/dressing.nvim',
    opts = {},
  },
  { 'mawkler/modicator.nvim' },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} }, -- indentation lines
  { 'NvChad/nvim-colorizer.lua'},
  -- toggle maximizes split window
  { "szw/vim-maximizer" },
  -- easy comments
  { "numToStr/Comment.nvim" },
  -- file tree explorer
  { "luukvbaal/nnn.nvim" },
  { "nvim-tree/nvim-web-devicons" },
  -- line for nvim modes
  { "nvim-lualine/lualine.nvim", lazy = false },
  { "RRethy/vim-illuminate" },
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
  -- git integration
  { 'lewis6991/gitsigns.nvim' }, -- git hightlights and icons
  { 'tpope/vim-fugitive' }, -- git wrapper for vim
  { 'rbong/vim-flog' }, -- git branch viwer
  {
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    requires = {
        "nvim-lua/plenary.nvim",
    },
  },
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

