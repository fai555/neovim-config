local wk = require("which-key")
local Terminal = require('toggleterm.terminal').Terminal

local toggle_float = function()
  local float = Terminal:new({direction = "float"})
  return float:toggle()
end

local toggle_tab = function()
  local tab = Terminal:new({direction = "tab"})
  return tab:toggle()
end

local toggle_vertical = function()
  local vertical = Terminal:new({size = "60", direction = "vertical"})
  return vertical:toggle()
end

local toggle_lazygit = function()
  local lazygit = Terminal:new({cmd = 'lazygit', direction = "float"})
end

local mappings = {
  q = {":q<CR>", "Quit"},
  Q = {":wq<CR>", "Save & Quit"},
  w = {":w<CR>", "Save"},
  x = {":bdelete<CR>", "Close"},
  E = {":e ~/.config/nvim/init.lua<cr>", "Edit Config"},
  f = {":Telescope find_files<cr>", "Telescope Find Files"},
  r = {":Telescope live_grep<cr>", "Telescope Live Grep"},
  t = {
    h = {":ToggleTerm<cr>", "Split Horizontal"},
    v = {toggle_vertical, "Vertical Terminal"},
    f = {toggle_float, "Floating Terminal"},
    t = {toggle_tab, "Terminal Tab"},
    l = {toggle_lazygit, "LazyGit"}
  }
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)

