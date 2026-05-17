return {
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "dark",
    },
  },
  {
    "f-person/auto-dark-mode.nvim",
    lazy = false,
    priority = 998,
    opts = {
      update_interval = 3000,
      set_dark_mode = function()
        vim.o.background = "dark"
        require("onedark").setup({ style = "dark" })
        require("onedark").load()
      end,
      set_light_mode = function()
        vim.o.background = "light"
        require("onedark").setup({ style = "light" })
        require("onedark").load()
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },

  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local git_blame = require("gitblame")

      opts.sections.lualine_a = {
        {
          "mode",
          fmt = function(str)
            return str:sub(1, 1)
          end,
        },
      }
      opts.sections.lualine_b = {}

      table.insert(opts.sections.lualine_x, {
        git_blame.get_current_blame_text,
        cond = git_blame.is_blame_text_available,
      })
    end,
  },

  {
    "folke/snacks.nvim",
    opts = {},
  },
}
