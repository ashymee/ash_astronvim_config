return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.completion.copilot-lua-cmp" },

  -- Colorscheme
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.colorscheme.catppuccin" },

  -- Markdown preview
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
}
