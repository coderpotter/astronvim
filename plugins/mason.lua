-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "bashls",
        "dockerls",
        "jsonls",
        "lua_ls",
        "hls",
        "marksman",
        "pylsp",
        "sourcery",
        "yamlls",
      })
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "autoflake", -- Removes unused imports and unused variables as reported by pyflakes
        "beautysh", -- A Bash beautifier for the masses.
        "black", -- The uncompromising Python code formatter.
        "buildifier", -- A tool for formatting bazel BUILD, WORKSPACE, and .bzl files.
        "isort", -- A Python utility / library to sort imports alphabetically and automatically separate them into sections and by type.
        "jsonlint", -- A JSON parser and validator with a CLI.
        "luacheck", -- A tool for linting and static analysis of Lua code.
        "markdownlint", -- Markdown linting and style checking for Visual Studio Code.
        "mdformat", -- An opinionated Markdown formatter that can be used to enforce a consistent style in Markdown files.
        "mypy", -- An optional static type checker for Python.
        "stylua", -- An opinionated Lua code formatter.
      })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "python",
        "js",
        "bash",
        "haskell",
      })
    end,
  },
}
