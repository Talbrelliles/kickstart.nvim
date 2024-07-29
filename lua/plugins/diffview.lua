return {
  'sindrets/diffview.nvim',
  keys = {
    {
      '<leader>dd',
      function()
        local view = require('diffview.lib').get_current_view()

        if view then
          vim.cmd 'DiffviewClose'
        else
          vim.cmd 'DiffviewOpen '
        end
      end,
      desc = 'Toggle Diff for buffer',
    },
    { '<leader>ld', '<cmd>DiffviewToggleFiles<CR>', desc = 'Open Diff files' },
  },
}
