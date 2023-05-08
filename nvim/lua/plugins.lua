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
  use 'kyazdani42/nvim-tree.lua'                -- File explorer
  use 'kyazdani42/nvim-web-devicons'            -- Icons
  use 'nvim-treesitter/nvim-treesitter'         -- Syntax highlighting engine
  use 'nvim-lua/popup.nvim'                     -- Dependency for telescope.nvim
  use 'nvim-lua/plenary.nvim'                   -- Dependency for telescope.nvim
  use 'nvim-telescope/telescope.nvim'           -- Fuzzy finder
  use 'lukas-reineke/indent-blankline.nvim'     -- Indentation guides
  use 'folke/todo-comments.nvim'                -- @TODO comments & others
  use 'NvChad/nvim-colorizer.lua'               -- See hex colors in editor
  use 'Bekaboo/deadcolumn.nvim'                 -- See character edge column
  use 'nvim-telescope/telescope-ui-select.nvim' -- Replaces UI selection with telescope
  use 'mhinz/vim-startify'                      -- Dashboard
  use 'RRethy/vim-illuminate'                   -- Highlight word under cursor
  use 'simrat39/symbols-outline.nvim'           -- Code outline

  -- Status bar
  use 'nvim-lualine/lualine.nvim'

  -- Buffer bar
  use {'romgrk/barbar.nvim', requires = {
    'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  }}

  -- UI Overhaul
  use({
    "folke/noice.nvim",
    requires = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  })

  -- Buffer line
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

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
  use 'nanotech/jellybeans.vim'
  use 'rebelot/kanagawa.nvim'
  use 'Shatur/neovim-ayu'
  use 'tamlok/detorte'
  use 'catppuccin/nvim'
  use 'LunarVim/horizon.nvim'
  use 'kvrohit/substrata.nvim'
  use {
    "chrsm/paramount-ng.nvim",
    requires = { "rktjmp/lush.nvim" }
  }
  use 'kvrohit/rasmus.nvim'
  use({
    'ramojus/mellifluous.nvim',
    requires = { 'rktjmp/lush.nvim' },
  })
  use "lewpoly/sherbet.nvim"
  use 'shaunsingh/moonlight.nvim'
  use 'arturgoms/moonbow.nvim'
  use 'ishan9299/modus-theme-vim'

end)
