vim.api.nvim_set_keymap('n', '<leader>e', ':Neotree filesystem reveal left toggle<CR>', {noremap = true,  silent = true,})
vim.api.nvim_set_keymap('n', '<leader>o', ':SymbolsOutline<CR>', {noremap = true,  silent = true,})
vim.api.nvim_set_keymap('n', '<leader>sp', ':Telescope colorscheme<CR>', {noremap = true,silent = true,})
vim.api.nvim_set_keymap('n', '<leader>r', ':luafile ~/.config/nvim/lua/init.lua<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>t', ':TodoTelescope<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>b', "<Cmd>lua require'dap'.toggle_breakpoint()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>f', ':TroubleToggle<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-s>', '<Esc>:w<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-r>', ':IncRename ', {expr = true})

vim.api.nvim_set_keymap('n', '<F1>', ':ToggleTerm dir=ir=%:p:h size=10 direction=horizontal<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F2>', ':ToggleTerm dir=ir=%:p:h size=40 direction=vertical<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F3>', ':ToggleTerm dir=ir=%:p:h direction=float<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F5>', "<Cmd>lua require'dap'.continue()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F12>', "<Cmd>lua require'dap'.step_out()<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '|', ':vsplit<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '-', ':split<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '?', '<cmd>lua require("hover").hover()<CR>', { noremap = true, silent = true, nowait = true })

-- lazy git
local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", count = 919, direction = 'float', hidden = true })

function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<F9>", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
-- lazy git end
