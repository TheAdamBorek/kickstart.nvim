return {
  'christoomey/vim-tmux-navigator',
  config = function()
    vim.g.tmux_navigator_disable_when_zoomed = 1
    vim.g.tmux_navigator_disable_netrw_workaround = 1
  end,
}
