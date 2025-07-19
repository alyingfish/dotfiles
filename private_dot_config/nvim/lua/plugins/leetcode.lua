return {
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      local projects = { icon = " ", key = "t", desc = "Leet Code", action = ":Leet" }
      table.insert(opts.dashboard.preset.keys, 9, projects)
    end,
  },
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        { "<leader>l", group = "+leetcode" },
      },
    },
  },
  {
    "kawre/leetcode.nvim",
    cmd = "Leet",
    lazy = true,
    build = ":TSUpdate html", -- if you have `nvim-treesitter` installed
    dependencies = {
      "nvim-telescope/telescope.nvim",
      -- "ibhagwan/fzf-lua",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
    opts = {
      ---@type lc.lang
      lang = "python3",

      cn = { -- leetcode.cn
        enabled = true, ---@type boolean
        translator = false, ---@type boolean
        translate_problems = false, ---@type boolean
      },

      injector = { ---@type table<lc.lang, lc.inject>
        ["python3"] = {
          before = { "from typing import List, Dict, Optional" },
        },
      },

      hooks = {
        ---@type fun()[]
        ["enter"] = {
          function()
            -- disable copilot when entering leetcode
            require("copilot.command").disable()
          end,
        },

        ---@type fun()[]
        ["leave"] = {
          function()
            require("copilot.command").enable()
          end,
        },
      },
    }, -- configuration goes here
    keys = {
      { "<leader>l", false },
      { "<leader>lz", "<cmd>Lazy<cr>", desc = "Lazy" },
      { "<leader>lm", "<cmd>Leet<cr>", desc = "Leetcode menu" },
      { "<leader>lc", "<cmd>Leet console<cr>", desc = "Leetcode console" },
      { "<leader>li", "<cmd>Leet info<cr>", desc = "Leetcode info" },
      { "<leader>l<tab>", "<cmd>Leet tabs<cr>", desc = "Leetcode tabs" },
      { "<leader>ly", "<cmd>Leet yank<cr>", desc = "Leetcode yank" },
      { "<leader>la", "<cmd>Leet lang<cr>", desc = "Leetcode lang" },
      { "<leader>l<cr>", "<cmd>Leet run<cr>", desc = "Leetcode run" },
      { "<leader>ls", "<cmd>Leet submit<cr>", desc = "Leetcode submit" },
      { "<leader>ll", "<cmd>Leet list<cr>", desc = "Leetcode list" },
      { "<leader>lt", "<cmd>Leet list status=todo<cr>", desc = "Leetcode list todo" },
      { "<leader>lo", "<cmd>Leet open<cr>", desc = "Leetcode open" },
      { "<leader>lr", "<cmd>Leet reset<cr>", desc = "Leetcode reset" },
      { "<leader>lb", "<cmd>Leet last_submit<cr>", desc = "Leetcode last_submit" },
      { "<leader>ld", "<cmd>Leet desc<cr>", desc = "Leetcode desc" },
    },
  },
}
