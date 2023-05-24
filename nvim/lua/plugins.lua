-- Install Packer if it's not already installed
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.api.nvim_command('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end

-- Initialize Packer
vim.cmd [[packadd packer.nvim]]
local packer = require('packer')

-- Define plugins
packer.startup(function()
  use 'wbthomason/packer.nvim'

  -- Plugins
  use 'nvim-treesitter/nvim-treesitter'         -- Syntax highlighting engine
  use 'lukas-reineke/indent-blankline.nvim'     -- Indentation guides
  use 'folke/todo-comments.nvim'                -- @TODO comments & others
  use 'NvChad/nvim-colorizer.lua'               -- See hex colors in editor
  use 'mhinz/vim-startify'                      -- Dashboard
  use 'simrat39/symbols-outline.nvim'           -- Code outline
  use 'folke/trouble.nvim'                      -- Diagnostics viewer
  use 'dstein64/nvim-scrollview'                -- Scrollbar
  use 'RRethy/vim-illuminate'                   -- Highlight token under cursor

  use 'nvim-lua/popup.nvim'                     -- Dependency for telescope.nvim
  use 'nvim-lua/plenary.nvim'                   -- Dependency for telescope.nvim
  use 'nvim-telescope/telescope.nvim'           -- Fuzzy finder
  use 'nvim-telescope/telescope-ui-select.nvim' -- Replaces UI selection with telescope

  -- File explorer
  use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }

  -- Status bar
  use 'nvim-lualine/lualine.nvim'

  -- Buffer bar
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

  -- UI Overhaul
  use({
    "folke/noice.nvim",
    requires = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  })

  -- LSP, DAPs, linters, formatters.
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {                                      -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
    }
  }
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  use 'jay-babu/mason-nvim-dap.nvim'
  use 'lewis6991/hover.nvim'

  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {}
  end}

  -- Terminal
  use {"akinsho/toggleterm.nvim", tag = '*',
    config = function() require("toggleterm").setup()
  end}

  -- Token Renaming
  use {
    "smjonas/inc-rename.nvim",
    config = function()
      require("inc_rename").setup()
    end,
  }

  use({
    "utilyre/sentiment.nvim",
    tag = "*",
    config = function() require("sentiment").setup({}) end,
  })

  -- Themes
  use 'rockerBOO/boo-colorscheme-nvim'
  use 'Shatur/neovim-ayu'
  use 'aktersnurra/no-clown-fiesta.nvim'
  use 'catppuccin/nvim'
  use 'folke/tokyonight.nvim'
  use 'rebelot/kanagawa.nvim'
  use { 'AlphaTechnolog/pywal.nvim', as = 'pywal' }

end)
