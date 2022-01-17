vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap

map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})

map('i', 'jk', '<ESC>', {noremap = true, silent = false})
map('i', 'kj', '<ESC>', {noremap = true, silent = false})

map('n', '<leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = false})
map('n', 'e<leader>', ':NvimTreeToggle<CR>', {noremap = true, silent = false})

map('n', '<leader>fp', ':Telescope project<CR>', {noremap = true, silent = false})

map('v', '<', '<gv', {noremap = true, silent = false})
map('v', '>', '>gv', {noremap = true, silent = false})

function _G.set_terminal_keymaps()
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], {noremap = true, silent = false})

  vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], {noremap = true, silent = false})
  vim.api.nvim_buf_set_keymap(0, 't', 'kj', [[<C-\><C-n>]], {noremap = true, silent = false})

  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], {noremap = true, silent = false})
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], {noremap = true, silent = false})
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], {noremap = true, silent = false})
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], {noremap = true, silent = false})
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
