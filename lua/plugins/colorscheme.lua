return {
  "sontungexpt/witch",
  priority = 1000,
  lazy = false,
  opts = {
    dim_inactive = {
      level = 0.90,
    }
  },
  config = function(_, opts)
      require("witch").setup(opts)
  end,
}
