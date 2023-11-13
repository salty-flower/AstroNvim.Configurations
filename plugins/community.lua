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
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.kotlin" },
  { import = "astrocommunity.pack.dart" },
  { import = "astrocommunity.pack.scala" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.scrolling.satellite-nvim" },
  { import = "astrocommunity.scrolling.neoscroll-nvim" },
  { import = "astrocommunity.scrolling.mini-animate" },
  { import = "astrocommunity.indent.indent-blankline-nvim" },
  { import = "astrocommunity.editing-support.refactoring-nvim" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.color.transparent-nvim" },
  -- causes hang after jumping to symbols
  -- { import = "astrocommunity.bars-and-lines.dropbar-nvim" },
  { import = "astrocommunity.bars-and-lines.vim-illuminate" },
  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  { import = "astrocommunity.motion.flash-nvim" },
}
