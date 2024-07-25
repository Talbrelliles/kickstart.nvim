return {
  {
    'mfussenegger/nvim-dap',
    keys = {
      {
        '<leader>Dp',
        function()
          require('dap').toggle_breakpoint()
        end,
        mode = { 'n' },
        desc = 'add nvim-dap breakpoint',
      },
      {
        '<leader>Dc',
        function()
          require('dap').continue()
        end,
        mode = { 'n' },
        desc = 'add nvim-dap launch and continue',
      },
      {
        '<leader>D]',
        function()
          require('dap').step_into()
        end,
        mode = { 'n' },
        desc = 'nvim-dap step into',
      },
      {
        '<leader>D>',
        function()
          require('dap').step_over()
        end,
        mode = { 'n' },
        desc = 'nvim-dap step over',
      },
      {
        '<leader>Do',
        function()
          require('dap').repl.open()
        end,
        mode = { 'n' },
        desc = 'open nvim-dap',
      },
    },
  },
  { 'rcarriga/nvim-dap-ui', dependencies = { 'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio' } },
}
