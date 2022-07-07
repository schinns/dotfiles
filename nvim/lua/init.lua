require('keymaps')
require('lsp')
require('plugins')
require('telescope').setup{ defaults = { file_ignore_patterns = {"node_modules"} } }

local vim = vim
vim.g.mapleader = ','
vim.wo.number = true
vim.wo.wrap = false

-- 1 tab == 2 spaces
vim.o.tabstop = 2 -- num of visual space per <TAB> char
vim.o.softtabstop = 2 -- num of spaces for TAB when editing, useful for backspace
vim.o.shiftwidth = 0 -- indentation level
