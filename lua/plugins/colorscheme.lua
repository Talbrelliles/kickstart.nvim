return {
  'eldritch-theme/eldritch.nvim',

  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    vim.cmd [[colorscheme eldritch]]
  end,
}

-- return {
--   'sontungexpt/witch',
--   priority = 1000,
--   lazy = false,
--   opts = {
--     dim_inactive = {
--       level = 0.90,
--     },
--   },
--   config = function(_, opts)
--     require('witch').setup(opts)
--   end,
-- }

-- return {
--   'scottmckendry/cyberdream.nvim',
--   lazy = false,
--   priority = 1000,
--   opts = {
--     transparent = true,
--     italic_comments = true,
--     terminal_colors = false,
--   },
-- }
