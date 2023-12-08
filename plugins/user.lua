return {
  {
    "kaarmu/typst.vim",
    ft = { "typst" },
    -- lazy = false,
  },
  { "tjdevries/colorbuddy.nvim" },
  -- {
  --   "rcarriga/nvim-notify",
  --   opts = function(_, opts) opts.background_colour = "#000000" end,
  -- },
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
  -- due to JoosepAlviste/nvim-ts-context-commentstring breaking changes at 5b02387b28a79c61b7d406c2a33d4db1d8454f53
  { "JoosepAlviste/nvim-ts-context-commentstring", opts = function(_, opts) opts.enable_autocmd = false end },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.context_commentstring = nil
      opts.prefer_git = true
    end,
  },
}
