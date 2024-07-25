return {
  'CopilotC-Nvim/CopilotChat.nvim',
  event = 'VeryLazy',
  enabled = true,
  branch = 'canary', -- while in development
  dependencies = {
    { 'zbirenbaum/copilot.lua' },
    { 'nvim-lua/plenary.nvim' },
  },
  opts = {
    debug = false, -- Enable debugging
    mappings = {
      reset = {
        normal = '<C-n>',
        insert = '<C-n>',
      },
    },
  },
  config = function(_, opts)
    require('CopilotChat').setup(opts)
    require('CopilotChat.integrations.cmp').setup()
    vim.keymap.set('n', '<leader>dt', ':CopilotChatToggle<CR>', { desc = 'Copilot Chat' })
  end,
}
