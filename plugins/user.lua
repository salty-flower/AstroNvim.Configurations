return {
  {
    "kaarmu/typst.vim",
    ft = { "typst" },
    -- lazy = false,
  },
  { "tjdevries/colorbuddy.nvim" },
  {
    "rcarriga/nvim-notify",
    opts = function(_, opts) opts.background_colour = "#000000" end,
  },
  { "NoahTheDuke/vim-just", ft = { "just" } },
  { "IndianBoy42/tree-sitter-just" },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
        },
      },
    },
  },
  {
    "mfussenegger/nvim-dap",
    enabled = true,
  },
}
