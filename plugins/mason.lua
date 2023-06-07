return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed =
        require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
          "astro",
          "bashls",
          "cssls",
          "docker-compose-language-server",
          "emmet_ls",
          "gopls",
          "html",
          "jsonls",
          "lua_ls",
          "marksman",
          "nginx-language-server",
          "omnisharp", -- dotnet
          "prismals",
          "pyright",
          "pylsp",
          "rust_analyzer",
          "sql_ls",
          "svelte",
          "tailwindcss",
          "taplo", -- toml
          "vuels",
          "vimls",
          "zls", -- zig
        })
    end,
  },

  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    opts = function(_, opts)
      opts.ensure_installed =
        require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
          "black",
          "blade-formatter",
          "prettierd",
          "sqlfmt",
          "stylua",
          "yamlfmt",
          "eslint_d",
        })
    end,
  },

  -- debugger
  { "jay-babu/mason-nvim-dap.nvim", opts = {} },
}
