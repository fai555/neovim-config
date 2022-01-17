require'nvim-tree'.setup {
  auto_close          = true,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 500
  },
  view = {
    auto_resize = true,
    width = 30
  }
}
