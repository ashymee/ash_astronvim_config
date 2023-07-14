return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.dracula-nvim" },
  { "Mofiqul/dracula.nvim", opts = { transparent_bg = true } },
  { import = "astrocommunity.colorscheme.everforest" },
  { import = "astrocommunity.colorscheme.github-nvim-theme" },
  {
    "projekt0n/github-nvim-theme",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("github-theme").setup {
        options = {
          transparent = true,
        },
      }
      vim.cmd "colorscheme github_dark"
    end,
  },
  { import = "astrocommunity.colorscheme.gruvbox-baby" },
  { import = "astrocommunity.colorscheme.gruvbox-nvim" },
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      transparent_mode = true,
      overrides = { SignColumn = { bg = "#ff9900" } },
    },
  },
  { import = "astrocommunity.colorscheme.iceberg-vim" },
  { import = "astrocommunity.colorscheme.kanagawa-nvim" },
  { "rebelot/kanagawa.nvim", opts = { theme = "dragon", transparent = true } },
  { import = "astrocommunity.colorscheme.mellow-nvim" },
  { import = "astrocommunity.colorscheme.mini-base16" },
  { import = "astrocommunity.colorscheme.monokai-pro-nvim" },
  { "loctvl842/monokai-pro.nvim", opts = { transparent_background = true } },
  { import = "astrocommunity.colorscheme.neosolarized-nvim" },
  { import = "astrocommunity.colorscheme.nightfox-nvim" },
  { import = "astrocommunity.colorscheme.nord-nvim" },
  {
    "shaunsingh/nord.nvim",
    init = function()
      vim.g.nord_contrast = true
      vim.g.nord_borders = false
      vim.g.nord_disable_background = true
      vim.g.nord_italic = false
      vim.g.nord_uniform_diff_background = true
      vim.g.nord_bold = false
    end,
  },
  { import = "astrocommunity.colorscheme.nvim-juliana" },
  { import = "astrocommunity.colorscheme.onedarkpro-nvim" },
  { "olimorris/onedarkpro.nvim", opts = { options = { transparency = true } } },
  { import = "astrocommunity.colorscheme.oxocarbon-nvim" },
  -- { import = "astrocommunity.colorscheme.onigiri-nvim" },
  { import = "astrocommunity.colorscheme.poimandres-nvim" },
  { import = "astrocommunity.colorscheme.rose-pine" },
  { import = "astrocommunity.colorscheme.sonokai" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { "folke/tokyonight.nvim", opts = { transparent = true } },
  { import = "astrocommunity.colorscheme.vscode-nvim" },
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
}
