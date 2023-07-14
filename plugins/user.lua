return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "User AstroFile",
    cmd = { "TodoQuickFix" },
    keys = {
      {
        "<leader>T",
        "<cmd>TodoTelescope<cr>",
        desc = "Open Todo in Telescope",
      },
    },
  },
  {
    "akinsho/flutter-tools.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    event = "User AstroFile",
  },
  {
    "Tsuzat/NeoSolarized.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
  },
  {
    "maxmx03/fluoromachine.nvim",
    opts = {
      glow = false,
      transparent = "full",
      theme = "fluoromachine", -- fluoromachine, delta, retrowave
    },
  },
  {
    "rcarriga/nvim-notify", -- additional configuration if set background to transparent
    opts = { background_colour = "#1a1b26" },
  },
  {
    "jose-elias-alvarez/typescript.nvim", -- add lsp plugin
    {
      "williamboman/mason-lspconfig.nvim",
      opts = {
        ensure_installed = { "tsserver" }, -- automatically install lsp
      },
    },
  },
  {
    "simrat39/rust-tools.nvim", -- add lsp plugin
  },
  {
    "justinsgithub/oh-my-monokai.nvim",
    config = function()
      require("oh-my-monokai").setup {
        transparent_background = true,
        terminal_colors = true,
        devicons = true, -- highlight the icons of `nvim-web-devicons`
        palette = "default", -- or create your own ^^ e.g. justinsgithub
        inc_search = "background", -- underline | background
        background_clear = {
          -- "float_win",
          "toggleterm",
          "telescope",
          "which-key",
          "renamer",
          "neo-tree",
        }, -- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree"
        plugins = {
          bufferline = {
            underline_selected = false,
            underline_visible = false,
          },
          indent_blankline = {
            context_start_underline = false,
          },
        },
        override = function() end,
      }
    end,
  },
  {
    "NvChad/nvim-colorizer.lua",
    opts = { user_default_options = { names = true, tailwind = true } },
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      { "roobert/tailwindcss-colorizer-cmp.nvim", config = true },
    },
    opts = function(_, opts)
      local format_kinds = opts.formatting.format
      opts.formatting.format = function(entry, item)
        format_kinds(entry, item)
        return require("tailwindcss-colorizer-cmp").formatter(entry, item)
      end
    end,
  },
}
