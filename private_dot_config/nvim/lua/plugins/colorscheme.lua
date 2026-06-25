return {
  {
    "catppuccin/nvim",
    opts = {
      transparent_background = true,
      float = {
        transparent = true,
        solid = true,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- check: https://github.com/LazyVim/LazyVim/discussions/2054
      -- Catppuccin has changed its name to catppuccin-nvim (the name that you pass to vim.cmd.colorscheme)
      -- because Neovim 0.12 integrated another catppuccin colorscheme into its builtin ones (they are not the same).
      -- So you have to to change colorscheme = "catppuccin" to colorscheme = "catppuccin-nvim".
      colorscheme = "catppuccin-nvim",
    },
  },
}
