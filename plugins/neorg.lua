return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  dependencies = { "nvim-lua/plenary.nvim" },
  lazy = false,
  config = function()
    require("neorg").setup {
      load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.concealer"] = {
          -- set concealer level to 2, so that text in between {{{ }}} is hidden
          config = { level = 2 },
        }, -- Adds pretty icons to your documents
        ["core.dirman"] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              notes = "~/notes",
            },
          },
        },
        ["core.export"] = {}, -- Exports Neorg documents into any other supported filetype.
        ["core.summary"] = {}, -- Creates links to all files in any workspace.
      },
    }
  end,
}
