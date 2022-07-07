local opts = {
  noremap = true,
  silent = true
}

vim.api.nvim_set_keymap('n', '<leader>n', ':NERDTree<cR>', opts)

-- Telescope
vim.api.nvim_set_keymap('n', '<C-p>', ':Telescope find_files<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>tg', ':Telescope live_grep<CR>', opts)
