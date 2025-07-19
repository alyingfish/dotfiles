return {
  -- lazy.nvim
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    -- your image configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    opts = {
      image = {
        enabled = vim.g.neovide == nil,
      },
      -- statuscolumn = {
      --   enabled = true,
      -- },
    },
  },
}
