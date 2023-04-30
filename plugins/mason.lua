-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "lua_ls",
        "dockerls",
        "docker_compose_language_service",
        -- "golangci_lint_ls",
        -- "gopls",
        "jsonls",
        "tsserver",
        "marksman",
        "intelephense",
        "prismals",
        "pyright",
        -- "ruby_ls",
        "sqlls",
        "svelte",
        "tailwindcss",
        "vuels",
        "yamlls",
        "cssls",
        "csharp_ls",
        "tsserver",
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
