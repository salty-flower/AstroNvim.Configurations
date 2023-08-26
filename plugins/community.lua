return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.colorscheme.neosolarized-nvim" },
  { import = "astrocommunity.pack.ps1" },
  { import = "astrocommunity.pack.cs" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.kotlin" },
  { import = "astrocommunity.pack.scala" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.rust" },
}
