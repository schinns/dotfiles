local opts = {
  noremap = true,
  silent = true
}

vim.api.nvim_set_keymap('n', '<leader>n', ':NERDTreeToggle<CR>', opts)

-- Telescope
vim.api.nvim_set_keymap('n', '<C-p>', ':Telescope find_files<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>tg', ':Telescope live_grep<CR>', opts)

-- Toggle left gutter 
vim.api.nvim_set_keymap('n', '<leader>m', ':GitGutterToggle | :set nu!<CR>', opts)

-- lsp
vim.api.nvim_set_keymap('n', 'H', ':lua vim.lsp.buf.hover()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>', opts)

