---@type LazySpec
return {
  {
    "kaarmu/typst.vim",
    ft = { "typst" },
  },

  -- == Examples of Overriding Plugins ==

  -- customize dashboard options
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = table.concat({
            " █████  ███████ ████████ ██████   ██████ ",
            "██   ██ ██         ██    ██   ██ ██    ██",
            "███████ ███████    ██    ██████  ██    ██",
            "██   ██      ██    ██    ██   ██ ██    ██",
            "██   ██ ███████    ██    ██   ██  ██████ ",
            "",
            "███    ██ ██    ██ ██ ███    ███",
            "████   ██ ██    ██ ██ ████  ████",
            "██ ██  ██ ██    ██ ██ ██ ████ ██",
            "██  ██ ██  ██  ██  ██ ██  ██  ██",
            "██   ████   ████   ██ ██      ██",
          }, "\n"),
        },
      },
    },
  },

  -- You can disable default plugins as follows:
  { "max397574/better-escape.nvim", enabled = false },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom luasnip configuration such as filetype extend or custom snippets
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })
    end,
  },

  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom autopairs configuration such as custom rules
      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"
      local cond = require "nvim-autopairs.conds"
      npairs.add_rules {
        Rule("$", "$", { "tex", "latex" })
          -- don't add a pair if the next character is %
          :with_pair(cond.not_after_regex "%%")
          -- don't add a pair if  the previous character is xxx
          :with_pair(cond.not_before_regex("xxx", 3))
          -- don't move right when repeat character
          :with_move(cond.none())
          -- don't delete if the next character is xx
          :with_del(cond.not_after_regex "xx")
          -- disable adding a newline when you press <cr>
          :with_cr(cond.none()),
      }
    end,
  },

  { "tjdevries/colorbuddy.nvim" },

  {
    "rcarriga/nvim-notify",
    opts = function(_, opts) opts.background_colour = "#000000" end,
  },

  { "NoahTheDuke/vim-just", ft = { "just" } },

  { "JoosepAlviste/nvim-ts-context-commentstring", opts = function(_, opts) opts.enable_autocmd = false end },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.context_commentstring = nil
      opts.prefer_git = true
    end,
  },

  {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    dependencies = {
      "ibhagwan/fzf-lua",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
    opts = { ---@type lc.UserConfig
      lang = "python3",
      injector = { ---@type table<lc.lang, lc.inject>
        ["python3"] = {
          imports = function(default_imports)
            local python3_imports_with_type_ignore = { "# ruff: noqa:F403, F401" }
            for _, line in ipairs(default_imports) do
              local new_line
              if line:find "*" then
                new_line = line .. " # pyright: ignore[reportWildcardImportFromLibrary]"
              else
                new_line = line .. " # pyright: ignore[reportUnusedImport]"
              end
              table.insert(python3_imports_with_type_ignore, new_line)
            end
            return python3_imports_with_type_ignore
          end,
        },
      },
    },
  },

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

  { "mfussenegger/nvim-dap", enabled = true },

  {
    "lervag/vimtex",
  },

  {
    "nvim-treesitter/nvim-treesitter-context",
    opts = {
      enable = true,
    },
  },

  {
    "folke/trouble.nvim",
    opts = {
      auto_open = false,
    },
  },

  { "kevinhwang91/nvim-ufo", enabled = false },
}
