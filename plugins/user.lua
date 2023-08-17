return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function() require("todo-comments").setup() end,
  },

  {
    "sudormrfbin/cheatsheet.nvim",
    lazy = false,
    config = function() require("telescope").setup() end,
  },

  {
    "lervag/vimtex",
    lazy = false,
  },

  {
    "neoclide/coc.nvim",
    branch = "release",
    run = "yarn install --frozen-lockfile",
    ft = "python",
    event = "BufRead",
  },
}
