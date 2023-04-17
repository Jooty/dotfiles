-- general
lvim.log.level = "warn"
lvim.format_on_save.enabled = false
vim.opt.smartindent = true
vim.opt.shiftwidth = 4
vim.opt.showmode = true

-- theme
vim.opt.termguicolors = true
vim.opt.wrap = true
lvim.transparent_window = true
lvim.colorscheme = "no-clown-fiesta"
lvim.builtin.lualine.options.theme = "modus-vivendi"

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["|"] = ":vsplit<CR>"
lvim.keys.normal_mode["-"] = ":split<CR>"
lvim.keys.normal_mode["<F5>"] = "<Cmd>lua require'dap'.continue()<CR>"
lvim.keys.normal_mode["<F12>"]  = "<Cmd>lua require'dap'.step_out()<CR>"
lvim.keys.normal_mode["<Leader>b"] = "<Cmd>lua require'dap'.toggle_breakpoint()<CR>"
lvim.keys.normal_mode["<Leader>a"] = "<Cmd>AerialToggle!<CR>"

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true

-- START DAP
lvim.builtin.dap.active = true
vim.g.dap_virtual_text = true
vim.g.dap_virtual_text_highlight = 'ErrorMsg'

local dap = require('dap')
local dapui = require("dapui")

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
-- END DAP

-- Additional Plugins
lvim.plugins = {
  {"stevearc/aerial.nvim"},
  {"karb94/neoscroll.nvim"},
  {"folke/todo-comments.nvim"},

  -- Themes
  {"rebelot/kanagawa.nvim"},
  {"savq/melange-nvim"},
  {"aktersnurra/no-clown-fiesta.nvim"},
}

-- Plugin Setup
require('aerial').setup({
  layout = {
    width = 30
  }
})
require('neoscroll').setup()
require("scrollbar").setup()
require("todo-comments").setup()
