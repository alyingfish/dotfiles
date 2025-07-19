-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- neovide configurations
if vim.g.neovide then
  vim.o.guifont = "Maple Mono NF CN:h9"
  vim.g.neovide_scale_factor = 1.0
  vim.g.neovide_refresh_rate = 160
end
