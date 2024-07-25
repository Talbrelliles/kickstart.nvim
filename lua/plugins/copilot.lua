local plugin = {
  'zbirenbaum/copilot.lua',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  cmd = 'Copilot',
  event = 'InsertEnter',
}

function plugin.config()
  require('copilot').setup {
    panel = {
      auto_refresh = false,
      keymap = {
        accept = '<CR>',
        jump_prev = '[[',
        jump_next = ']]',
        refresh = 'gr',
        open = '<M-CR>',
      },
    },
    suggestion = {
      auto_trigger = false,
      keymap = {
        accept = false,
        accept_word = '<M-w>',
        accept_line = '<M-L>',
        prev = '<M-k>',
        next = '<M-j>',
      },
    },
  }
  vim.api.nvim_set_hl(0, 'CopilotSuggestion', { fg = '#326457' })
  vim.api.nvim_set_hl(0, 'CopilotAnnotation', { fg = '#326457' })

  local suggestion = require 'copilot.suggestion'
  vim.keymap.set('i', '<M-l>', function()
    if suggestion.is_visible() then
      suggestion.accept()
    else
      suggestion.next()
    end
  end, { desc = '[copilot] accept or next suggestion' })

  vim.keymap.set('i', '<M-x>', function()
    suggestion.toggle_auto_trigger()
    if suggestion.is_visible() then
      suggestion.dismiss()
    else
      suggestion.next()
    end
  end, { desc = '[copilot] toggle auto trigger' })
end

return plugin
