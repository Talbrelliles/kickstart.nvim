return {
  'joeveiga/ng.nvim',
  opts = {
    noremap = true,
    silent = true,
  },
  config = function()
    local ng = require 'ng'
    vim.keymap.set('n', '<leader>nt', function()
      ng.goto_template_for_component { reuse_window = true }
    end, { desc = 'Go to Angular Template' })
    vim.keymap.set('n', '<leader>nc', function()
      ng.goto_component_with_template_file { reuse_window = true }
    end, { desc = 'Go to angular component' })
    vim.keymap.set('n', '<leader>nT', ng.get_template_tcb, { desc = 'Get typecheck block' })
  end,
}
