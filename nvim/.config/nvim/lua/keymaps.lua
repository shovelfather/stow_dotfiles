-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- For oil.nvim file manager
vim.keymap.set('n', '<Leader>fe', ':Oil<CR>', { desc = 'Open oil file manager' })

-- Neorg specific, these move neorg items up and down.
vim.keymap.set('n', '<LocalLeader>k', '<Plug>(neorg.text-objects.item-up)', {
  desc = 'Move object up',
})
vim.keymap.set('n', '<LocalLeader>j', '<Plug>(neorg.text-objects.item-down)', {
  desc = 'Move Object Down',
})
vim.keymap.set('n', '<LocalLeader>w', '<cmd>Neorg workspace neorg<cr>', {
  noremap = true,
  desc = 'Open workspace',
})

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

-- Lua
vim.keymap.set('n', '<leader>e', function()
  require('substitute').operator { modifiers = { 'reindent' } }
end, { noremap = true, desc = 'Substitute operator' })
vim.keymap.set('n', '<leader>ee', require('substitute').line, { noremap = true, desc = 'Substitute line' })
vim.keymap.set('n', '<leader>E', require('substitute').eol, { noremap = true, desc = 'Substitite eol' })
vim.keymap.set('x', '<leader>e', require('substitute').visual, { noremap = true, desc = 'Substitute visual' })

-- vim: ts=2 sts=2 sw=2 et
