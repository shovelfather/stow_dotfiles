-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.tw = 80

-- Fixes filetype detection for docker-compose LS
function Docker_Fix()
  local filename = vim.fn.expand("%:t")

  if filename == "docker-compose.yaml" then
    vim.bo.filetype = "yaml.docker-compose"
    print("matched!")
  else
    print(filename)
  end
end

vim.cmd([[au BufRead * lua Docker_Fix()]])
