return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "User AstroFile",
    cmd = { "TodoQuickFix" },
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open Todo in Telescope" },
    },
  },
  {
    "akinsho/flutter-tools.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    -- opts = {},
    event = "User AstroFile",
    -- lazy = false,
  },
  -- {
  --   "overcache/NeoSolarized",
  -- },
  -- {
  --   "svrana/neosolarized.nvim"
  -- },
  {
    "Tsuzat/NeoSolarized.nvim",
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    -- config = function()
    --   vim.cmd [[ colorscheme NeoSolarized ]]
    -- end
  },
  -- additional configuration if set background to transparent
  -- it needs to set background_colour
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#1a1b26"
    }
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
}
