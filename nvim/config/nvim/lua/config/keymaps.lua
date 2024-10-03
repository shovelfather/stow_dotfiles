-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>fw", "<cmd>!firefox --new-window file:////%:p<CR>")
vim.keymap.set("n", "d", '"_d')
vim.keymap.set("v", "d", '"_d')
