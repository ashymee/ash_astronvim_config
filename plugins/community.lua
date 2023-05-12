return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.completion.copilot-lua-cmp" },

  -- Colorscheme
  -- { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.gruvbox" },
  { import = "astrocommunity.colorscheme.oxocarbon" },
  { import = "astrocommunity.colorscheme.everforest" },
  { import = "astrocommunity.colorscheme.kanagawa" },
  { import = "astrocommunity.colorscheme.nightfox" },
  { import = "astrocommunity.colorscheme.rose-pine" },
  { import = "astrocommunity.colorscheme.tokyonight" },
  { import = "astrocommunity.colorscheme.mini-base16" },
  -- kanagawa, mini-base16, nightfox, oxocarbon, rose-pine, tokyonight

  -- Markdown preview
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
}
