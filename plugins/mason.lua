-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        -- LSP/Mason                       TS [TreeSitter]
        -- -------------------------------------------------------------
        "lua_ls",        -- lua
        "tsserver",      -- javascript & typescript
        "jsonls",        -- json & jsonc
        "marksman",      -- markdown
        "prismals",      -- prisma
        "yamlls",        -- yaml
        "emmet_ls",      -- html
        "intelephense",  -- php
        "pyright",       -- python
        "sqlls",         -- sql
        "svelte",        -- svelte
        "tailwindcss",   -- css
        "vuels",         -- vue
        "csharp_ls",     -- c_sharp
        "rust_analyzer", -- rust
        "graphql",       -- graphql
        "zls",           -- zig
        -- "prettierd",
        -- "dockerls",                        -- dockerfile
        -- "docker_compose_language_service", -- dockerfile
        -- "gopls",                           -- go
        -- "eslint_d"
        -- additional TS: fish, tsx, jsx (@LSP), dart, gitignore, dot, scss
      },
      automatic_installation = false,
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      -- ensure_installed = { "stylua" },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      -- ensure_installed = { "python", "js", "dart", "php" },
    },
  },
}
