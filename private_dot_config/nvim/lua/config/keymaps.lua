-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- cd to directory of current file
vim.keymap.set("n", "<leader>cd", "<cmd>cd %:p:h<cr><cmd>pwd<cr>")
-- Bind p in visual mode to paste without overriding the current register
vim.keymap.set("v", "p", "pgvy")

-- Auto toggle Copilot completion
-- Reference: https://github.com/LazyVim/LazyVim/discussions/4232
local copilot_exists = pcall(require, "copilot")

if copilot_exists then
  Snacks.toggle({
    name = "Copilot Completion",
    -- color = {
    --   enabled = "azure",
    --   disabled = "orange",
    -- },
    get = function()
      return not require("copilot.client").is_disabled()
    end,
    set = function(state)
      if state then
        require("copilot.command").enable()
      else
        require("copilot.command").disable()
      end
    end,
  }):map("<leader>at")
end
