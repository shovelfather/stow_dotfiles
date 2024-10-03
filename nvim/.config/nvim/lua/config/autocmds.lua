-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
-- Added this per below github issue, but basically was hitting weird dedents
-- when trying to type . in ruby files.
-- https://github.com/nvim-treesitter/nvim-treesitter/issues/2566
vim.cmd([[autocmd FileType ruby setlocal indentkeys-=.]])

-- This one I need for the docker-compose-language-server. Without it, the LSP
-- never attaches. Hee Hee.
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = "docker-compose.yaml",
  callback = function()
    require("lspconfig").docker_compose_language_service.setup({})
  end,
})
