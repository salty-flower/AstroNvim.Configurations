return {
  "goolord/alpha-nvim",
  opts = function(_, opts) table.insert(opts.section.buttons.val, opts.button("lt", "  LeetCode", ":Leet<ENTER>")) end,
}
