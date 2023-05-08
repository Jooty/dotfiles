require('vim_options')
require('plugins')
require('keybindings')
require('theme')

if vim.g.neovide then
  require('neovide_options')
end

require('plugin_options.telescope')
require('plugin_options.nvimtree')
require('plugin_options.treesitter')
require('plugin_options.indent')
require('plugin_options.mason')
require('plugin_options.lsp')
require('plugin_options.todo')
require('plugin_options.colorizer')
require('plugin_options.deadcolumn')
require('plugin_options.noice')
--require('plugin_options.wilder')
require('plugin_options.statusline')
require('plugin_options.terminal')
require('plugin_options.hover')
require('plugin_options.outline')
