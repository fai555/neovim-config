require('plugins')
require('keybindings')
require('options')
require('treesitter-config')
require('autopairs-config')
require('lualine-config')
require('barbar-config')
require('nvim-tree-config')
require('telescope-config')
require('project-nvim-config')
require('whichkey-config')
require('dashboard-config')
require('format-config')
require('toggleterm-config')
require('diffview-config')
require('neorg-config')

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox-material]])

