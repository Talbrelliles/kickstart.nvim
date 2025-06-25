return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'zbirenbaum/copilot.lua' },
      { 'nvim-lua/plenary.nvim', branch = 'master' }, -- for curl, log and async functions
    },
    build = 'make tiktoken', -- Only on MacOS or Linux
    opts = {
      mappings = {
        submit_prompt = {
          normal = '<CR>',
        },
        reset = {
          normal = '<Leader>db',
        },
      },
    },
    keys = {
      { '<Leader>dt', '<cmd>CopilotChatToggle<cr>', desc = 'Copilot Chat' },
    },
  },
}
