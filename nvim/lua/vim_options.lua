vim.g.mapleader = ' '
vim.cmd('syntax on')
vim.opt.termguicolors = true
vim.wo.number = true
vim.o.mouse = 'a'
vim.o.wrap = false
vim.opt.breakindent = true
vim.opt.undodir = vim.fn.expand('~/.vim/undodir')
vim.o.undofile = true
vim.o.completeopt = "menuone,noselect"
vim.opt.swapfile = falseha

vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.expandtab = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true
