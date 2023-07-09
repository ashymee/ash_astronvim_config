-- 🪄 NeoSolarized,
-- 🪄 catppuccin,
-- 🪄 dracula
-- everforest,
-- 🪄 fluoromachine
-- 🪄 github_dark
-- 🪄 github_dark_colorblind
-- 🪄 github_dark_default
-- 🪄 github_dark_dimmed
-- 🪄github_dark_high_contrast
-- 🪄 github_dark_tritanopia
-- 🪄 github_dimmed
-- 🪄 github_light
-- 🪄 github_light_colorblind
-- 🪄 github_light_default
-- 🪄 github_light_high_contrast
-- 🪄 github_light_tritanopia
-- 🪄 gruvbox,
-- 🪄 gruvbox-baby,
-- iceberg
-- 🪄 kanagawa,
-- 🪄 kanagawa-dragon,
-- 🪄 kanagawa-lotus,
-- 🪄 kanagawa-wave,
-- 🪄 mellow
-- mini-base16,
-- 🪄 monokai-pro
-- 🪄 monokai-octagon
-- 🪄 monokai-machine
-- 🪄 monokai-ristretto
-- 🪄 monokai-spectrum
-- 🪄 monokai-classic
-- nightfox,
-- nord
-- onedark
-- 🪄 onigiri
-- oxocarbon,
-- rose-pine,
-- solarized
-- 🪄 tokyonight-night,
-- 🪄 tokyonight-storm,
-- 🪄 tokyonight-day,
-- 🪄 tokyonight-moon,

return {
  heirline = {
    colors = {
      bg = "#000D19",
      section_bg = "#000D19",
      section_fg = "#ffa500",
      normal = "#000D19",
      insert = "#00ff00",
      visual = "#ff00ff",
      buffer_active_fg = "#ffa500",
      git_branch_fg = "#00ff00",
    },
    attributes = {
      buffer_active = { bold = true, italic = false },
      buffer_picker = { bold = false },
      macro_recording = { bold = true },
      git_branch = { bold = false },
      git_diff = { bold = true },
    },
  },
  colorscheme = "oh-my-monokai",
  icons = {
    ActiveLSP = "",
    ActiveTS = " ",
    BufferClose = "",
    DapBreakpoint = "",
    DapBreakpointCondition = "",
    DapBreakpointRejected = "",
    DapLogPoint = "",
    DapStopped = "",
    DefaultFile = "",
    Diagnostic = "",
    DiagnosticError = "",
    DiagnosticHint = "",
    DiagnosticInfo = "",
    DiagnosticWarn = "",
    Ellipsis = "",
    FileModified = "",
    FileReadOnly = "",
    FoldClosed = "",
    FoldOpened = "",
    FolderClosed = "",
    FolderEmpty = "",
    FolderOpen = "",
    Git = "",
    GitAdd = "",
    GitBranch = "",
    GitChange = "",
    GitConflict = "",
    GitDelete = "",
    GitIgnored = "◌",
    GitRenamed = "➜",
    GitStaged = "✓",
    GitUnstaged = "✗",
    GitUntracked = "★",
    LSPLoaded = "",
    LSPLoading1 = "",
    LSPLoading2 = "",
    LSPLoading3 = "",
    MacroRecording = "",
    Paste = "",
    Search = "",
    Selected = "",
    TabClose = "",
  },
  plugins = {
    {
      "rebelot/heirline.nvim",
      opts = function(_, opts)
        opts.winbar = nil
        return opts
      end,
    },
    {
      "williamboman/mason-lspconfig.nvim",
      opts = { ensure_installed = { "rust_analyzer" } },
    },
  },
  updater = {
    remote = "origin", -- remote to use
    channel = "stable", -- "stable" or "nightly"
    version = "latest", -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
    branch = "nightly", -- branch name (NIGHTLY ONLY)
    commit = nil, -- commit hash (NIGHTLY ONLY)
    pin_plugins = nil, -- nil, true, false (nil will pin plugins on stable only)
    skip_prompts = false, -- skip prompts about breaking changes
    show_changelog = true, -- show the changelog after performing an update
    auto_quit = false, -- automatically quit the current session after a successful update
    remotes = { -- easily add new remotes to track
    },
  },
  diagnostics = { virtual_text = true, underline = true },
  lsp = {
    -- customize lsp formatting options
    formatting = {
      -- control auto formatting on save
      format_on_save = {
        enabled = true, -- enable or disable format on save globally
        allow_filetypes = {
          -- enable format on save for specified filetypes only
          -- "go",
        },
        ignore_filetypes = {
          -- disable format on save for specified filetypes
          -- "python",
        },
        organize_imports_on_format = true,
      },
      disabled = {
        -- disable formatting capabilities for the listed language servers
        -- disable lua_ls formatting capability if you want to use StyLua to format your lua code
        -- "lua_ls",
      },
      timeout_ms = 1000, -- default format timeout
    },
    -- enable servers that you already have installed without mason
    servers = {
      "astro",
      "bashls",
      "csharp_ls",
      "cssls",
      "dockerls",
      "emmet_ls",
      "gopls",
      "html",
      "intelephense",
      "jsonls",
      "tailwindcss",
      "tsserver",
    },
    setup_handlers = {
      -- add custom handler
      tsserver = function(_, opts)
        require("typescript").setup {
          server = opts,
          root_dir = require("lspconfig.util").root_pattern ".git",
          flags = { debounce_text_changes = 0 },
        }
      end,
      rust_analyzer = function(_, opts)
        require("rust-tools").setup { server = opts }
      end,
      cssls = function()
        require("lspconfig").cssls.setup {
          cmd = { "vscode-css-language-server", "--stdio" },
          filetypes = {
            "css",
            "scss",
            "less",
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
          },
          settings = {
            css = { lint = { unknownAtRules = "ignore" }, validate = true },
          },
          root_dir = require("lspconfig.util").root_pattern ".git",
          autostart = true,
        }
      end,
      tailwindcss = function()
        require("lspconfig").tailwindcss.setup {
          root_dir = require("lspconfig.util").root_pattern ".git",
        }
      end,
      emmet_ls = function()
        require("lspconfig").emmet_ls.setup {
          autostart = true,
          root_dir = require("lspconfig.util").root_pattern ".git",
        }
      end,
    },
  },
  lazy = {
    defaults = { lazy = true },
    performance = {
      rtp = {
        -- customize default disabled vim plugins
        disabled_plugins = {
          "tohtml",
          "gzip",
          "matchit",
          "zipPlugin",
          "netrwPlugin",
          "tarPlugin",
        },
      },
    },
  },
  -- options = { opt = { showtabline = 0, laststatus = 2 } },

  -- This function is run last and is a good place to configuring
  -- augroups/autocommands and custom filetypes also this just pure lua so
  -- anything that doesn't fit in the normal config locations above can go here
  polish = function() end,
}
