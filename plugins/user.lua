return {
  {
    "neoclide/coc.nvim",
    branch = "release",
    run = "yarn install --frozen-lockfile",
    ft = "python",
    event = "BufRead",
  },

  {
    "mechatroner/rainbow_csv",
    event = "BufRead",
  },
}
