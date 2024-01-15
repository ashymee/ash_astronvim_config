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
      transparent = "full", -- boolean | "full"
      theme = "fluoromachine", -- fluoromachine, delta, retrowave
      colors = function(_, d)
        return {
          bg = d("#000000", 0),
          alt_bg = d("#190920", 20),
          currentline = "#202122", -- #463465
          selection = "#190940",
          comment = "#495495",
          cyan = "#61E2FF",
          green = "#72f1b8",
          orange = "#ff8b39",
          pink = "#ff7edb",
          purple = "#AF6DF9",
          red = "#fe4450",
          yellow = "#daa520", -- #FFCC00
          cursor_fg = "#282a36",
          cursor_bg = "#f8f8f8",
          sign_add = "#72f1b8",
          sign_change = "#ff8b39",
          sign_delete = "#fe4450",
          error = "#fe4450",
          warning = "#ff8b39",
          info = "#61E2FF",
          hint = "#61E2FF",
          other = "#AF6DF9",
          blankline = "#57367C",
          active_blankline = "#39785C",
          inlay_hint = "#CC64AF",
        }
      end,
      overrides = function(c)
        return {
          Cursor = { fg = "NONE", bg = "#32cd32" },
          Folded = { fg = "#fff999", bg = "#555555" },
          FoldColumn = { fg = c.yellow, bg = "NONE" },
          CursorLine = { fg = "NONE", bg = "NONE" }, -- #32CD32
          CursorLineNr = { fg = "#32cd32", bg = c.bg },
          LineNr = { fg = "#222222", bg = "NONE" },
          TelescopeSelection = { fg = "#32cd32", bg = "NONE" },
          TelescopeSelectionCaret = { fg = "#ff0000", bg = "NONE" },
          TelescopeMatching = { fg = "#ff0000", bg = "NONE" },
          TelescopeNormal = { fg = "#555555", bg = "NONE" },
          TelescopeBorder = { fg = "#222222", bg = "NONE" },
          Number = { fg = "#ff0000", bg = "NONE" },
        }
      end,
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
  {
    "wuelnerdotexe/vim-astro",
  },
}
