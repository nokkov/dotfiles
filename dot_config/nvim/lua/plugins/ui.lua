return {

    {
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      opts = {},
    },

    {
      'nvim-lualine/lualine.nvim',
      dependencies = { 'nvim-tree/nvim-web-devicons' }
    },

    {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons",
      },
      lazy = false,
    },

    {
      "akinsho/bufferline.nvim",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      config = function()
        require("bufferline").setup({
          options = {
            diagnostics = "nvim_lsp",
            separator_style = "slant",
            show_buffer_close_icons = true,
            show_close_icon = false,
          },
        })
      end,
    },

    {
      'goolord/alpha-nvim',
      config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
      end
    },

    {
      "rcarriga/nvim-notify",
      config = function()
      require("notify").setup({
        render = "compact",        -- "default" | "compact" | "minimal"
        stages = "slide",          -- "fade" | "slide" | "static"
        timeout = 3000,
        max_width = 50,
      })
      vim.notify = require("notify")  -- перехватить все уведомления
      end,
    },

    {
      "folke/which-key.nvim",
      event = "VeryLazy",
      opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      },
      keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
     },
    },

}
