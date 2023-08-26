return {
  {
    "kaarmu/typst.vim",
    ft = { "typst" },
  },
  { "tjdevries/colorbuddy.nvim" },
  {
    "rcarriga/nvim-notify",
    opts = function(_, opts) opts.background_colour = "#000000" end,
  },
}
