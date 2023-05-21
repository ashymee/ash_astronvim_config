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
        "lua_ls",                          -- lua
        "dockerls",                        -- dockerfile
        "docker_compose_language_service", -- dockerfile
        "gopls",                           -- go
        "jsonls",                          -- json & jsonc
        "tsserver",                        -- javascript & typescript
        "marksman",                        -- markdown
        "intelephense",                    -- php
        "prismals",                        -- prisma
        "pyright",                         -- python
        "ruby_ls",                         -- ruby
        "sqlls",                           -- sql
        "svelte",                          -- svelte
        "tailwindcss",                     -- css
        "vuels",                           -- vue
        "yamlls",                          -- yaml
        "csharp_ls",                       -- c_sharp
        "rust_analyzer",                   -- rust
        "emmet_ls",                        -- html
        "graphql",                         -- graphql
        "zls"                              -- zig
        -- additional TS: fish, tsx, jsx (@LSP), dart, gitignore, dot, graphql, scss
      },
      automatic_installation = true,
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
