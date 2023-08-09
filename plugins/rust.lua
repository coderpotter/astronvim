return {

  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
      vim.g.rustfmt_fail_silently = 1
    end,
  },

  {
    "simrat39/rust-tools.nvim",
    depends = "nvim-lspconfig",
    ft = "rust",
    config = function() require("rust-tools").setup() end,
  },

  "mfussenegger/nvim-dap",
}
