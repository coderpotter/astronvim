return {
  {
    "sudormrfbin/cheatsheet.nvim",
    lazy = false,
    config = function() require("telescope").setup() end,
  },

  {
    "neoclide/coc.nvim",
    branch = "release",
    run = "yarn install --frozen-lockfile",
    ft = "python",
    event = "BufRead",
  },

  {
    "ggandor/leap.nvim",
    event = "BufRead",
    config = function() require("leap").add_default_mappings() end,
  },

  {
    "simrat39/symbols-outline.nvim",
    event = "BufRead",
    config = function() require("symbols-outline").setup() end,
  },
  {
    "mechatroner/rainbow_csv",
    event = "BufRead",
  },
}
