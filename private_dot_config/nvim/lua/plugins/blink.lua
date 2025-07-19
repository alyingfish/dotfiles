return {
  {
    "saghen/blink.cmp",
    event = { "CmdlineEnter", "InsertEnter" },
    opts = {
      cmdline = {
        enabled = true,
      },
      keymap = {
        preset = "super-tab",
        -- workaround to: https://github.com/LazyVim/LazyVim/issues/6185
        ["<Tab>"] = {
          require("blink.cmp.keymap.presets").get("super-tab")["<Tab>"][1],
          require("lazyvim.util.cmp").map({ "snippet_forward", "ai_accept" }),
          "fallback",
        },
      },
      completion = {
        accept = {
          dot_repeat = not vim.g.neovide,
        },
      },
    },
  },
}
