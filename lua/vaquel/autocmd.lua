-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Disable for now as sometimes I don't want it to quit.
-- Quit nvim if nvim-tree is the last window
-- vim.api.nvim_create_autocmd('QuitPre', {
--   callback = function()
--     local invalid_win = {}
--     local wins = vim.api.nvim_list_wins()
--     for _, w in ipairs(wins) do
--       local bufname = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(w))
--       if bufname:match 'NvimTree_' ~= nil then
--         table.insert(invalid_win, w)
--       end
--     end
--     if #invalid_win == #wins - 1 then
--       -- Should quit, so we close all invalid windows.
--       for _, w in ipairs(invalid_win) do
--         vim.api.nvim_win_close(w, true)
--       end
--     end
--   end,
-- })
